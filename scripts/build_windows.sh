#!/bin/bash
docker build . -f builder/Dockerfile.windows -t pyinstaller-windows-builder
docker run -v "$(pwd)/dist:/src/dist" pyinstaller-windows-builder