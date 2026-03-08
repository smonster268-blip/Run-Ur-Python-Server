# <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Satellite%20Antenna.png" width="40" /> Silent Background Server

<p align="center">
  <img src="https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows" />
  <img src="https://img.shields.io/badge/Language-Python-yellow?style=for-the-badge&logo=python" />
  <img src="https://img.shields.io/badge/Status-Hidden-lightgrey?style=for-the-badge&logo=ghostery" />
</p>

<p align="center">
  <b>A sleek, invisible local host solution.</b> No console windows. No clutter. Just your server running in the shadows.
</p>

---

### 📂 Project Architecture

```mermaid
graph LR
  A[run_hidden.vbs] -->|Silently Executes| B[server_start.bat]
  B -->|Spawns| C[Python HTTP Server]
  D[stop_server.bat] -->|Terminates| C
Gemini said
I hear you! You want the "Deep Dive" version—more technical detail, clearer requirements, and a foolproof guide for what happens once the "ghost" is in the machine.

Here is the updated, high-detail Markdown code. Copy this entire block into your README.md:

Markdown
# <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Satellite%20Antenna.png" width="40" /> Silent Background Server

<p align="center">
  <img src="https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows" />
  <img src="https://img.shields.io/badge/Language-Python-yellow?style=for-the-badge&logo=python" />
  <img src="https://img.shields.io/badge/Status-Hidden-lightgrey?style=for-the-badge&logo=ghostery" />
</p>

---

### 📂 Detailed Architecture & Workflow

This setup creates a "wrapper chain" to bypass the Windows Command Prompt GUI.



```mermaid
graph TD
  User((User)) -->|Logs into Windows| Startup[Windows Startup Folder]
  Startup -->|Triggers| VBS[run_hidden.vbs]
  VBS -->|Executes w/ WindowStyle 0| BAT[server_start.bat]
  BAT -->|Launches| PY[python -m http.server]
  PY -->|Service| LocalHost[http://localhost:8080]
  Kill[stop_server.bat] -->|Taskkill /F| PY
📋 System Requirements
To ensure the scripts execute correctly, your environment must meet these specs:

Operating System: Windows 10 or 11.

Python 3.x: Must be installed and added to System PATH (so python is recognized in CMD).

Permissions: Standard User (Admin is only needed if hosting on restricted ports like 80 or 443).

Network: Firewall must allow Python to communicate on private networks.

🚀 Implementation Guide
1. The "Ghost" Logic (run_hidden.vbs)
This script tells Windows to run the batch file in a hidden state (the 0 at the end of the command).

VBScript
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "server_start.bat" & Chr(34), 0
Set WshShell = Nothing
2. The Engine (server_start.bat)
Navigate to your target folder first so the server hosts the correct files.

Code snippet
@echo off
cd /d "%~dp0"
python -m http.server 8080
3. Setting Up "Auto-Run"
Once your files are ready, follow these steps to make it permanent:

Press Win + R, type shell:startup, and hit Enter.

Right-click run_hidden.vbs and select Create Shortcut.

Cut/Paste that shortcut into the Startup folder.

Verification: Restart your PC or log out/in. The server will start automatically without a single window popping up.

🔍 How to Access & Manage
After the server starts, it lives in the background as a "zombie" process.

Accessing Content
Local: Open your browser to http://localhost:8080

Network: Use your local IP (e.g., http://192.168.1.5:8080) to access files from your phone or tablet.

Shutting Down
Since there is no "X" button to click, use the included stop_server.bat:

Code snippet
@echo off
taskkill /f /im python.exe
echo Server has been terminated.
pause
Note: This kills all running Python processes. If you run other Python apps, we can modify this to target the specific Port ID instead.

<div align="center">
<img src="https://www.google.com/search?q=https://img.shields.io/badge/Security-Local_Only-red%3Fstyle%3Dflat-square" />
<p><i>"Invisible, persistent, and lightweight."</i></p>
</div>


**Would you like me to refine the `stop_server.bat` so it only kills the server on port 8080 with
