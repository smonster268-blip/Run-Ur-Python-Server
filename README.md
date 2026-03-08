# <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Satellite%20Antenna.png" width="40" /> Silent Background Server

<p align="center">
  <img src="https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows" />
  <img src="https://img.shields.io/badge/Language-Python-yellow?style=for-the-badge&logo=python" />
  <img src="https://img.shields.io/badge/Status-Hidden-lightgrey?style=for-the-badge&logo=ghostery" />
  <img src="https://img.shields.io/badge/Safety-Local%20Only-red?style=for-the-badge" />
</p>

<p align="center">
  <b>A sleek, invisible local host solution.</b> No console windows. No clutter. Just your server running in the shadows. 
</p>

---

### ⚠️ IMPORTANT: READ BEFORE USE
> [!WARNING]  
> **Network Scope:** This server runs on your **Local Network** only. To access the data from another device, both devices **must** be connected to the same Wi-Fi or LAN.
> 
> **Usage Warning:** **Do not try this in your school or college computer labs.** Running unauthorized background servers on institutional networks may violate terms of service or security policies. Use this for personal development on your own hardware only.

---

### 📋 Requirements
* **OS**: Windows 10 / 11.
* **Python**: 3.x installed and added to **PATH**.
* **Network**: A private home network for sharing between devices.

---

### 📂 Project Architecture

```mermaid
graph LR
  A[run_hidden.vbs] -->|Silently Executes| B[server_start.bat]
  B -->|Spawns| C[Python HTTP Server]
  D[stop_server.bat] -->|Terminates| C
  E[Windows Startup] -.->|Auto-Launch| A
