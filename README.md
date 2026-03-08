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
