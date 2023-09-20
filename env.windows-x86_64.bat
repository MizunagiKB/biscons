REM SPDX-License-Identifier: MIT
REM SPDX-FileCopyrightText: 2023 MizunagiKB <mizukb@live.jp>
@echo off
mkdir env\windows.x86_64
pushd env\windows.x86_64
if not exist "cpython-3.10.13+20230826-x86_64-pc-windows-msvc-shared-install_only.tar.gz" (
    echo install python
    curl -LkSsO https://github.com/indygreg/python-build-standalone/releases/download/20230826/cpython-3.10.13+20230826-x86_64-pc-windows-msvc-shared-install_only.tar.gz
    tar xf cpython-3.10.13+20230826-x86_64-pc-windows-msvc-shared-install_only.tar.gz
    python\python -m ensurepip
    python\python.exe -m pip install scons
    python\python.exe -m pip install cx_Freeze
)
popd

env\windows.x86_64\python\python.exe setup.py build
