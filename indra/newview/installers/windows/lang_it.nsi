; First is default
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Italian.nlf"

; Language selection dialog
LangString InstallerLanguageTitle  ${LANG_ITALIAN} "Linguaggio del programma di installazione"
LangString SelectInstallerLanguage  ${LANG_ITALIAN} "Scegliere per favore il linguaggio del programma di installazione"

; subtitle on license text caption
LangString LicenseSubTitleUpdate ${LANG_ITALIAN} " Update"
LangString LicenseSubTitleSetup ${LANG_ITALIAN} " Setup"

LangString MULTIUSER_TEXT_INSTALLMODE_TITLE ${LANG_ITALIAN} "Modalità installazione"
LangString MULTIUSER_TEXT_INSTALLMODE_SUBTITLE ${LANG_ITALIAN} "Installare per tutti gli utenti (autorizzazione amministratore richiesta) o solo per l’utente corrente?"
LangString MULTIUSER_INNERTEXT_INSTALLMODE_TOP ${LANG_ITALIAN} "Quando avvi questo programma d’installazione con privilegi di amministratore, puoi scegliere se installare (ad es.) su c:\Programmi o sulla cartella AppData\Local dell’utente corrente."
LangString MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS ${LANG_ITALIAN} "Installa per tutti gli utenti"
LangString MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER ${LANG_ITALIAN} "Installa solo per l’utente corrente"

; installation directory text
LangString DirectoryChooseTitle ${LANG_ITALIAN} "Directory di installazione" 
LangString DirectoryChooseUpdate ${LANG_ITALIAN} "Scegli la directory di Firestorm per l’update alla versione ${VERSION_LONG}.(XXX):"
LangString DirectoryChooseSetup ${LANG_ITALIAN} "Scegli la directory dove installare Firestorm:"

LangString MUI_TEXT_DIRECTORY_TITLE ${LANG_ITALIAN} "Cartella di installazione"
LangString MUI_TEXT_DIRECTORY_SUBTITLE ${LANG_ITALIAN} "Seleziona la cartella in cui installare Firestorm:"

LangString MUI_TEXT_INSTALLING_TITLE ${LANG_ITALIAN} "Sto installando Firestorm..."
LangString MUI_TEXT_INSTALLING_SUBTITLE ${LANG_ITALIAN} "Sto installando il Viewer Firestorm su $INSTDIR"

LangString MUI_TEXT_FINISH_TITLE ${LANG_ITALIAN} "Sto installando Firestorm"
LangString MUI_TEXT_FINISH_SUBTITLE ${LANG_ITALIAN} "Viewer Firestorm installato su $INSTDIR."

LangString MUI_TEXT_ABORT_TITLE ${LANG_ITALIAN} "Installazione annullata"
LangString MUI_TEXT_ABORT_SUBTITLE ${LANG_ITALIAN} "Non sto installando il Viewer Firestorm su $INSTDIR."

; CheckStartupParams message box
LangString CheckStartupParamsMB ${LANG_ITALIAN} "Non riesco a trovare il programma '$INSTNAME'. Silent Update fallito."

; installation success dialog
LangString InstSuccesssQuestion ${LANG_ITALIAN} "Avvia ora Firestorm?"

; remove old NSIS version
LangString RemoveOldNSISVersion ${LANG_ITALIAN} "Controllo delle precedenti versioni…"

; check windows version
LangString CheckWindowsVersionDP ${LANG_ITALIAN} "Controllo della versione di Windows…"
LangString CheckWindowsVersionMB ${LANG_ITALIAN} 'Firestorm supporta solo Windows Vista SP2.'
LangString CheckWindowsServPackMB ${LANG_ITALIAN} "It is recomended to run Firestorm on the latest service pack for your operating system.$\nThis will help with performance and stability of the program."
LangString UseLatestServPackDP ${LANG_ITALIAN} "Please use Windows Update to install the latest Service Pack."

; checkifadministrator function (install)
LangString CheckAdministratorInstDP ${LANG_ITALIAN} "Controllo del permesso di installazione…"
LangString CheckAdministratorInstMB ${LANG_ITALIAN} 'Stai utilizzando un account “limitato”.$\nSolo un “amministratore” può installare Firestorm.'

; checkifadministrator function (uninstall)
LangString CheckAdministratorUnInstDP ${LANG_ITALIAN} "Controllo del permesso di installazione…"
LangString CheckAdministratorUnInstMB ${LANG_ITALIAN} 'Stai utilizzando un account “limitato”.$\nSolo un “amministratore” può installare Firestorm.'

; checkcpuflags
LangString MissingSSE2 ${LANG_ITALIAN} "This machine may not have a CPU with SSE2 support, which is required to run Firestorm ${VERSION_LONG}. Do you want to continue?"

; Extended cpu checks (AVX2)
LangString MissingAVX2 ${LANG_ITALIAN} "La tua CPU non supporta le istruzioni AVX2. Scarica la versione legacy per CPU da %DLURL%-legacy-cpus/"
LangString AVX2Available ${LANG_ITALIAN} "La tua CPU supporta le istruzioni AVX2. Puoi scaricare la versione ottimizzata per AVX2 per migliori prestazioni da %DLURL%/. Vuoi scaricarla ora?"
LangString AVX2OverrideConfirmation ${LANG_ITALIAN} "If you believe that your PC can support AVX2 optimization, you may install anyway. Do you want to proceed?"
LangString AVX2OverrideNote ${LANG_ITALIAN} "By overriding the installer, you are about to install a version that might crash immediately after launching. If this happens, please immediately install the standard CPU version."

; closesecondlife function (install)
LangString CloseSecondLifeInstDP ${LANG_ITALIAN} "In attesa che Firestorm chiuda…"
LangString CloseSecondLifeInstMB ${LANG_ITALIAN} "Non è possibile installare Firestorm se è già in funzione..$\n$\nTermina le operazioni in corso e scegli OK per chiudere Firestorm e continuare.$\nScegli CANCELLA per annullare l’installazione."
LangString CloseSecondLifeInstRM ${LANG_ITALIAN} "Firestorm failed to remove some files from a previous install."

; closesecondlife function (uninstall)
LangString CloseSecondLifeUnInstDP ${LANG_ITALIAN} "In attesa della chiusura di Firestorm…"
LangString CloseSecondLifeUnInstMB ${LANG_ITALIAN} "Non è possibile installare Firestorm se è già in funzione.$\n$\nTermina le operazioni in corso e scegli OK per chiudere Firestorm e continuare.$\nScegli CANCELLA per annullare."

; CheckNetworkConnection
LangString CheckNetworkConnectionDP ${LANG_ITALIAN} "Verifica connessione di rete in corso..."

; error during installation
LangString ErrorSecondLifeInstallRetry ${LANG_ITALIAN} "Firestorm installer encountered issues during installation. Some files may not have been copied correctly."
LangString ErrorSecondLifeInstallSupport ${LANG_ITALIAN} "Please reinstall viewer from https://www.firestormviewer.org/downloads/ and contact https://www.firestormviewer.org/support/ if issue persists after reinstall."

; ask to remove user's data files
LangString RemoveDataFilesMB ${LANG_ITALIAN} "Cancellazione dei file cache nella cartella Documents and Settings?"

; delete program files
LangString DeleteProgramFilesMB ${LANG_ITALIAN} "Sono ancora presenti dei file nella directory programmi di Firestorm.$\n$\nPotrebbe trattarsi di file creati o trasferiti in:$\n$INSTDIR$\n$\nVuoi cancellarli?"

; uninstall text
LangString UninstallTextMsg ${LANG_ITALIAN} "Così facendo Firestorm verrà disinstallato ${VERSION_LONG} dal tuo sistema."

; ask to remove registry keys that still might be needed by other viewers that are installed
LangString DeleteRegistryKeysMB ${LANG_ITALIAN} "Do you want to remove application registry keys?$\n$\nIt is recomended to keep registry keys if you have other versions of Firestorm installed."

; <FS:Ansariel> Ask to create protocol handler registry entries
LangString CreateUrlRegistryEntries ${LANG_ITALIAN} "Do you want to register Firestorm as default handler for virtual world protocols?$\n$\nIf you have other versions of Firestorm installed, this will overwrite the existing registry keys."

; <FS:Ansariel> Optional start menu entry
LangString CreateStartMenuEntry ${LANG_ITALIAN} "Create an entry in the start menu?"

; <FS:Ansariel> Application name suffix for OpenSim variant
LangString ForOpenSimSuffix ${LANG_ITALIAN} "for OpenSimulator"

LangString DeleteDocumentAndSettingsDP ${LANG_ITALIAN} "Deleting files in Documents and Settings folder."
LangString UnChatlogsNoticeMB ${LANG_ITALIAN} "This uninstall will NOT delete your Firestorm chat logs and other private files. If you want to do that yourself, delete the Firestorm folder within your user Application data folder."
LangString UnRemovePasswordsDP ${LANG_ITALIAN} "Removing Firestorm saved passwords."

LangString MUI_TEXT_LICENSE_TITLE ${LANG_ITALIAN} "Vivox Voice System License Agreement"
LangString MUI_TEXT_LICENSE_SUBTITLE ${LANG_ITALIAN} "Additional license agreement for the Vivox Voice System components."
LangString MUI_INNERTEXT_LICENSE_TOP ${LANG_ITALIAN} "Please read the following license agreement carefully before proceeding with the installation:"
LangString MUI_INNERTEXT_LICENSE_BOTTOM ${LANG_ITALIAN} "You have to agree to the license terms to continue with the installation."
