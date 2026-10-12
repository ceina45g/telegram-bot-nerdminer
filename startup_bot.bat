@echo off
cd /d "C:\Users\user\Documents\telegram bot"
echo Cleaning up old processes...
taskkill /F /IM python.exe /T 2>nul
taskkill /F /IM ngrok.exe /T 2>nul

echo Starting ngrok...
start "" "C:\ProgramData\chocolatey\bin\ngrok.exe" http 8001
echo Waiting for ngrok to initialize...
timeout /t 5

echo Starting FastAPI Bot...
"C:\Program Files\Python313\python.exe" "python-telegram-bot+FastAPI.py"
pause
