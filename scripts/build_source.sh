#!/bin/bash
## Detect OS
unameOut="$(uname -s)"
case "${unameOut}" in
Linux*) machine=Linux ;;
Darwin*) machine=Mac ;;
CYGWIN*) machine=Cygwin ;;
MINGW*) machine=MinGw ;;
WindowsNT*) machine=Windows ;;
*) machine="UNKNOWN:${unameOut}" ;;
esac

if [[ "$machine" =~ "Mac" ]]; then
  pyinstaller --onefile "main.py" -n "metamon-player" --distpath "dist/macos"
elif [[ "$machine" =~ "Linux" ]]; then
  pyinstaller --onefile "main.py" -n "metamon-player" --distpath "dist/linux"
elif [[ "$machine" =~ "Windows" ]]; then
  pyinstaller --onefile "main.py" -n "metamon-player"--distpath "dist/windows"
fi
