echo off

REM Startup script for the 'Rattatui' web server on a Windows System

REM Execute this line of code before calling 'Start_Rat-Srv.cmd' (PowerShell console with elevated rights)
REM This sets the PowerShell execution policy to allow execution of scripts (venv source script)
REM Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

REM source/activate the Python virtual environment
powershell .\venv\Scripts\Activate.ps1

REM Start the web server application
python manage.py runserver





