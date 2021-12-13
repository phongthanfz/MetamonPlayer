#!/bin/bash
pyi-makespec --onefile "entrypoint.py" -n "qr-scanner" --add-data "static/config.ini:src/static/" --icon "static/icon.ico"