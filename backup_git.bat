@echo off
set "REPO_PATH=%USERPROFILE%\Desktop\POC PROJECTS"
set "BACKUP_DIR=%USERPROFILE%\git-backups"
set TIMESTAMP=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%-%TIME:~3,2%
set "BACKUP_NAME=backup_%TIMESTAMP%.zip"

:: Ensure backup directory exists
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

:: Create a ZIP archive of the repository
powershell -Command "Compress-Archive -Path '%REPO_PATH%\*' -DestinationPath '%BACKUP_DIR%\%BACKUP_NAME%' -Force"

echo Backup completed: %BACKUP_DIR%\%BACKUP_NAME%
