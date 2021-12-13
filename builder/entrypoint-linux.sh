#!/bin/bash
pyinstaller --clean -y --dist ./dist/linux --workpath /tmp *.spec
