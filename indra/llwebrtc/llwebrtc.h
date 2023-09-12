/**
 * @file llaccordionctrl.cpp
 * @brief Accordion panel  implementation
 *
 * $LicenseInfo:firstyear=2023&license=viewerlgpl$
 * Second Life Viewer Source Code
 * Copyright (C) 2023, Linden Research, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation;
 * version 2.1 of the License only.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * Linden Research, Inc., 945 Battery Street, San Francisco, CA  94111  USA
 * $/LicenseInfo$
 */

#ifndef LLWEBRTC_H
#define LLWEBRTC_H

#include <string>
#include <vector>

#ifdef LL_MAKEDLL
#ifdef WEBRTC_WIN
#define LLSYMEXPORT __declspec(dllexport)
#elif WEBRTC_LINUX
#define LLSYMEXPORT __attribute__((visibility("default")))
#else
#define LLSYMEXPORT /**/
#endif
#else
#define LLSYMEXPORT /**/
#endif // LL_MAKEDLL

namespace llwebrtc
{
LLSYMEXPORT void init();

struct LLWebRTCIceCandidate
{
    std::string candidate;
    std::string sdp_mid;
    int         mline_index;
};

class LLWebRTCVoiceDevice
{
  public:
    std::string display_name;  // friendly value for the user
    std::string id;     // internal value for selection

    LLWebRTCVoiceDevice(const std::string &display_name, const std::string &id) :
        display_name(display_name),
        id(id) {};
};

typedef std::vector<LLWebRTCVoiceDevice> LLWebRTCVoiceDeviceList;

class LLWebRTCDevicesObserver
{
  public:
    virtual void OnRenderDevicesChanged(const LLWebRTCVoiceDeviceList &render_devices) = 0;
    virtual void OnCaptureDevicesChanged(const LLWebRTCVoiceDeviceList &capture_devices) = 0;
};

class LLWebRTCDeviceInterface
{
  public:

    virtual void refreshDevices() = 0;

    virtual void setCaptureDevice(const std::string& id) = 0;
    virtual void setRenderDevice(const std::string& id) = 0;

    virtual void setDevicesObserver(LLWebRTCDevicesObserver *observer) = 0;
    virtual void unsetDevicesObserver(LLWebRTCDevicesObserver *observer) = 0;

    virtual void setTuningMode(bool enable) = 0;
    virtual double getTuningMicrophoneEnergy() = 0;
};

class LLWebRTCAudioInterface
{
  public:
    virtual void setMute(bool mute) = 0;
};

class LLWebRTCSignalingObserver
{
  public: 
    enum IceGatheringState{
        ICE_GATHERING_NEW,
        ICE_GATHERING_GATHERING,
        ICE_GATHERING_COMPLETE
    };
    virtual void OnIceGatheringState(IceGatheringState state) = 0;
    virtual void OnIceCandidate(const LLWebRTCIceCandidate& candidate) = 0;
    virtual void OnOfferAvailable(const std::string& sdp) = 0;
    virtual void OnRenegotiationNeeded() = 0;
    virtual void OnAudioEstablished(LLWebRTCAudioInterface *audio_interface) = 0;
};

class LLWebRTCSignalInterface
{
  public:
    virtual void setSignalingObserver(LLWebRTCSignalingObserver* observer) = 0;
    virtual void unsetSignalingObserver(LLWebRTCSignalingObserver* observer) = 0;

    virtual bool initializeConnection() = 0;
    virtual void shutdownConnection() = 0;
    virtual void AnswerAvailable(const std::string &sdp) = 0;
};

LLSYMEXPORT LLWebRTCDeviceInterface* getDeviceInterface();
LLSYMEXPORT LLWebRTCSignalInterface* getSignalingInterface();
}

#endif // LLWEBRTC_H
