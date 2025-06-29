Login workflow overview

Login logic is implemented in indra/viewer_components/login and used by the viewer through LLLoginInstance.

LLLoginInstance begins a login attempt in connect(). It gathers login URIs, builds request parameters and calls LLLogin::connect with them.

LLLogin::Impl::connect() launches a coroutine (loginCoro) on its event pump to process the login flow.

Inside loginCoro, progress events are posted:

"authenticating" when sending the XML‑RPC request.

"downloading" while waiting for the server.

Either "online" on success or "fail.login" on failure.
Example event emission for success: sendProgressEvent("online", "connect", mAuthResponse["responses"]).

The login module’s event pump reports the state, progress and data as described in the header comments.

LLLoginInstance listens to those events in handleLoginEvent, updates mLoginState and dispatches to specific handlers (e.g., handleLoginSuccess, handleLoginFailure).

Logout sequence

When the viewer quits, LLAppViewer::sendLogoutRequest() sends a LogoutRequest message and marks the request as sent.

The server replies with LogoutReply, processed by process_logout_reply which eventually calls LLAppViewer::forceQuit() to exit.

Simplified sequence diagram

sequenceDiagram
    participant User
    participant PanelLogin
    participant LLLoginInstance
    participant LLLogin
    participant LoginServer
    participant Updater

    User->>PanelLogin: Enter credentials
    PanelLogin->>LLLoginInstance: connect(credentials)
    LLLoginInstance->>LLLogin: connect(uri, request)
    LLLogin->>LLLogin: start loginCoro
    LLLogin->>LoginServer: XML-RPC login request
    LoginServer-->>LLLogin: status events / response
    LLLogin-->>LLLoginInstance: progress events (authenticating, downloading)
    alt success
        LLLogin-->>LLLoginInstance: online/connect
        LLLoginInstance->>Updater: sync if needed
        LLLoginInstance-->>User: login succeeds
    else failure
        LLLogin-->>LLLoginInstance: offline/fail.login
        LLLoginInstance->>PanelLogin: show failure/TOS/update
    end
    User->>LLLoginInstance: request quit
    LLLoginInstance->>LLLogin: disconnect()
    LLLogin->>LoginServer: LogoutRequest
    LoginServer-->>LLLogin: LogoutReply
    LLLogin->>LLLoginInstance: offline/disconnect
    LLLoginInstance->>User: application exits
This illustrates how the login module and viewer components interact from the initial credential submission through success or failure handling and finally logout.


```rust
main()
 └─ LLAppViewerLinux::init()
     └─ LLAppViewer::init()
         └─ initWindow()
             └─ new LLViewerWindow
                 └─ LLViewerWindow::initBase()
                     ├─ create <LLRootView>
                     └─ build MainPanel from main_view.xml
                         ├─ LLPanel::buildFromFile()
                         │   └─ initPanelXML()
                         │       └─ LLUICtrlFactory::createChildren()
                         └─ add to root view
         └─ (startup continues...)
 └─ while (!frame())
     └─ LLAppViewer::frame()
         └─ doFrame()
             ├─ gatherInput() etc.
             ├─ display()
             │   └─ gViewerWindow->draw()
             │       └─ mRootView->draw()
             │           └─ LLView::drawChildren() ... (recursive)
             └─ update background tasks
```