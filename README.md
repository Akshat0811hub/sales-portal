# OrbitSales CRM — Enterprise Omnichannel Sales, Call Recording & Live Chat Platform

A real-time, zero-touch Sales CRM unifying **Mobile Phone Calls (with Audio Recording & Conversation Transcripts)**, **WhatsApp Web (100% Zero-Loss Post-Install Message Capture)**, and **Gmail (Full Client & Salesperson Thread Sync)** into a high-speed workspace for Administrators and Sales Executives.

---

## Core Capabilities

1. **Millisecond WhatsApp Web & Gmail Live Sync (Zero Missed Messages)**
   - Captures **100% of every single WhatsApp message and Email** sent or received after extension installation (`installedAt` gate prevents ancient historical clutter while guaranteeing zero dropped messages going forward).
   - Accurately distinguishes **Salesperson Sent (`[Sales - Name]`)** vs **Client Sent (`[Client - Name]`)** across both the live message stream and individual client deal threads.
2. **Real-Time Mobile Call Tracking, Audio Recording & Call Transcripts**
   - Tracks **Incoming Ringing**, **Outgoing Dialing**, **Live Active Call Stopwatch**, **Call Cut / Ended**, **Missed Calls**, and **Client Did Not Pick Up (Unanswered Outgoing Calls)** with exact Start Time, End Time, and Talk Duration in IST.
   - Supports **Call Audio Recording Upload & In-Browser Playback** plus **Live Speech-to-Text Conversation Transcripts ("Call Par Kya Baat Hui")** over Wi-Fi and 4G/5G networks.
3. **Dedicated Portals for Admin & Sales Team**
   - **Admin Console**: Full visibility across all sales executives, live ongoing calls, every WhatsApp/Email message, call recordings, transcripts, and revenue pipeline.
   - **Sales Executive Portal**: Dedicated workspace for **Jinendra**, **Vishal**, **Rahul**, and **Archana** with personal deal pipelines, follow-up queues, and mobile companion sync.

---

## Configured Sales Team & Credentials

| Role / Name | Login Username | Password | Assigned Phone(s) | Assigned Email(s) |
| :--- | :--- | :--- | :--- | :--- |
| **Super Admin** | `admin` | `Akshat@123#` | — | `admin@orbitouch-hr.com` |
| **Jinendra** | `jinendra` | `Jinendra@123` | `8010264508` | `jinendra@orbitouch-hr.com` |
| **Vishal** | `vishal` | `Vishal@123` | `7701969169`, `9211711371` | `vishal@orbitouch-hr.com` |
| **Rahul** | `rahul` | `Rahul@123` | `9211711370` | `hello@orbitouch-hr.com`, `hello@orbitverify.com` |
| **Archana** | `archana` | `Archana@123` | `9211711376` | `archana@orbitouch-hr.com`, `archana@orbitverify.com` |

---

## Quick Start

- **Server**: Automatically runs on Port `4000` via `silent-autostart.vbs` (`keep-crm-running.ps1`), or manually via `start-crm.bat`.
- **Web Workspace**: `http://192.168.1.34:4000` (or `http://localhost:4000`).
- **Mobile Call & Recording Companion**: `http://192.168.1.34:4000/phone`.
- **Browser Extension**: Load unpacked from `chrome-extension/` in `chrome://extensions`.
