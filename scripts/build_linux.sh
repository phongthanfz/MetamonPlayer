#!/bin/bash
docker build . -f builder/Dockerfile.linux -t pyinstaller-linux-builder
docker run -v "$(pwd)/dist:/src/dist" pyinstaller-linux-builder