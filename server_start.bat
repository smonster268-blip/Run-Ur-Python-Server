@echo off
cd /d "%~dp0"
python -m http.server 8080

' if u also want upload file 

:: 1. Install a server that actually supports uploads
pip install uploadserver

:: 2. Start the server (standard port 8080)
echo Starting server on http://localhost:8080
python -m uploadserver 8080
