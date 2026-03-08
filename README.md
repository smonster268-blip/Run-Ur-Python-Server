# <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Satellite%20Antenna.png" width="40" /> Silent Background Server

<p align="center">
  <img src="https://img.shields.io/badge/OS-Windows-blue?style=for-the-badge&logo=windows" />
  <img src="https://img.shields.io/badge/Language-Python-yellow?style=for-the-badge&logo=python" />
  <img src="https://img.shields.io/badge/Status-Hidden-lightgrey?style=for-the-badge&logo=ghostery" />
</p>

---

### 📋 Requirements
* **OS**: Windows (10/11)
* **Python**: 3.x installed and added to **PATH**.
* **Browser**: Any modern browser to access `localhost:8080`.

---

### 📂 Project Architecture

```mermaid
graph LR
  A[run_hidden.vbs] -->|Silently Executes| B[server_start.bat]
  B -->|Spawns| C[Python HTTP Server]
  D[stop_server.bat] -->|Terminates| C
  E[Windows Startup] -.->|Auto-Launch| A
