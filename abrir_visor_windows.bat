@echo off
title Gemelo digital - servidor local
cd /d "%~dp0"
echo.
echo   Gemelo digital · Chasis autonomo Phebus
echo   ----------------------------------------
echo   Arrancando el servidor local...
echo.

where py >nul 2>nul
if %errorlevel%==0 goto :con_py

where python >nul 2>nul
if %errorlevel%==0 goto :con_python

where npx >nul 2>nul
if %errorlevel%==0 goto :con_npx

echo   No he encontrado Python ni Node en este ordenador.
echo.
echo   Dos opciones:
echo     1) Instala Python desde https://www.python.org/downloads/
echo        (marca la casilla "Add python.exe to PATH") y vuelve a ejecutar este fichero.
echo     2) Abre index.html haciendo doble clic: funciona casi todo,
echo        menos el circuito en alta densidad y el boton AR.
echo.
pause
goto :eof

:con_py
start "" http://localhost:8080/index.html
py -m http.server 8080
goto :eof

:con_python
start "" http://localhost:8080/index.html
python -m http.server 8080
goto :eof

:con_npx
start "" http://localhost:8080/index.html
npx --yes serve -l 8080
goto :eof
