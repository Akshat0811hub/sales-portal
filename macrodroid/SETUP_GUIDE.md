# Android Mobile Call, Stopwatch & Recording Setup Guide (Sales Team)

This guide explains what to configure on the Android phones of **Jinendra (`8010264508`)**, **Vishal (`7701969169`, `9211711371`)**, **Rahul (`9211711370`)**, and **Archana (`9211711376`)** so that every call (Incoming Ring, Outgoing Dial, Live Stopwatch, Call Cut, Missed Call, Client Did Not Pick Up, Call Recording, and Conversation Transcript) syncs in real time to the **OrbitSales CRM Dashboard**.

---

## Step 1: Enable Built-In Auto Call Recording on the Phone
1. Open the **Phone / Dialer** app on the salesperson's Android phone -> tap **Settings (⚙️)** -> **Call Recording**.
2. Turn ON **"Record calls automatically"** (for **All numbers**).
   - *Note*: Recorded audio files are saved automatically in the phone's `Recordings/Call` or `MIUI/sound_recorder/call_rec` folder.

---

## Step 2: Install MacroDroid (One-Time 2-Minute Setup)
1. Install **MacroDroid** from the Google Play Store on the salesperson's phone.
2. Go to **Android Settings -> Apps -> MacroDroid**:
   - Grant **Phone**, **Call Logs**, **Contacts**, **Microphone**, **Files/Media**, and **Notifications** permissions.
   - Set **Battery** to **Unrestricted** (so Android never kills it in the background).

---

## Step 3: Copy Webhooks from `/phone` Mobile Companion
1. On the salesperson's phone browser (Chrome), open:
   - `http://192.168.1.34:4000/phone`
   - *(Tip: Add this page to the Phone Home Screen via Chrome Menu -> "Add to Home screen" so the salesperson can also use the 1-Tap Call Recording & Live Speech-to-Text Transcriber anytime!)*
2. Select the salesperson's name (**Jinendra**, **Vishal**, **Rahul**, or **Archana**) from the dropdown.
3. Create **4 simple macros** in MacroDroid using the **HTTP Request** action (`Method: POST`, `Content-Type: text/plain`):

### Permanent Cloud Server URL (Same for all 4 Macros — Works on Wi-Fi & 4G/5G):
```
https://ntfy.sh/sales_crm_calls_9f8a7b6c5d4e
```

| Macro Name | Trigger (`Any Number`) | POST Body (`text/plain` — Replace `Jinendra` with Salesperson Name) | What It Tracks in Admin Dashboard |
| :--- | :--- | :--- | :--- |
| **1. Sales Call Ringing** | `Call Incoming` | `event=ringing&dir=incoming&recruiter=Jinendra&phone={call_number}&name={call_name}` | Shows live **Incoming Ringing** alert + detects **Missed Calls** if not answered |
| **2. Sales Call Outgoing** | `Call Outgoing` | `event=dialing&dir=outgoing&recruiter=Jinendra&phone={call_number}&name={call_name}` | Shows live **Dialing Client** + detects **"Call Kari Thi Par Client Ne Nahi Uthayi"** if client doesn't pick up |
| **3. Sales Call Answered** | `Call Active` | `event=started&recruiter=Jinendra&phone={call_number}&name={call_name}` | Starts the **Live Talking Stopwatch** with exact Call Start Time |
| **4. Sales Call Ended** | `Call Ended` | `event=ended&recruiter=Jinendra&phone={call_number}&name={call_name}` | Logs exact **Call Cut / End Time**, **Talk Duration**, and final Call Status |

---

## Step 4: How Call Recordings & "Call Par Kya Baat Hui" Sync Work
- **Option A (Live Companion Recorder + Speech-to-Text)**:
  - Open `http://192.168.1.34:4000/phone` on the phone (or inside the Sales Portal on laptop/phone) and tap **"Start Call Audio Recording + Live Speech Transcript"** during a speakerphone/headset call. It records the audio AND converts the Hindi/English conversation into text automatically!
- **Option B (1-Tap Auto Call Recording File Upload)**:
  - After any call, open `http://192.168.1.34:4000/phone` (or the Call Activity tab in the Sales Portal), tap **"Attach Recorded Call File"**, and pick the latest recording from the phone's `Call Recordings` folder. It attaches the audio player and conversation summary directly to that call in the Admin Dashboard!
