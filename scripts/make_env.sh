#!/bin/bash
echo "Check version"
python3 --version

echo "Make venv"
if [ ! -d "./venv" ]; then
  python3 -m venv venv
fi

source venv/bin/activate

pip install -r requirements.txt

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

