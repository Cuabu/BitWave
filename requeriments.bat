@echo off
title BitWave Python Installer

echo =====================================
echo      BitWave Python Installer
echo =====================================
echo.

:: Verificar Python
python --version >nul 2>&1

if %errorlevel% neq 0 (
    echo [ERROR] Python no esta instalado o no esta en el PATH.
    echo.
    echo Descarga Python desde:
    echo https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [OK] Python detectado.
echo.

:: Actualizar pip
echo Actualizando pip...
python -m pip install --upgrade pip

echo.
echo Instalando dependencias...
echo.

:: WebSocket
pip install websockets

:: Cliente HTTP
pip install requests

:: Servidor WebSocket avanzado
pip install aiohttp

:: Informacion del sistema
pip install psutil

:: Variables de entorno
pip install python-dotenv

:: JSON Web Tokens
pip install pyjwt

:: Criptografia
pip install cryptography

:: Base de datos SQLite
pip install sqlalchemy

echo.
echo =====================================
echo Instalacion completada
echo =====================================
echo.

pip list

pause