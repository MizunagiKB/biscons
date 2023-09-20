# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2023 MizunagiKB <mizukb@live.jp>

mkdir -p env/macos.arm64
pushd env/macos.arm64
if [ ! -f "cpython-3.10.13+20230826-aarch64-apple-darwin-install_only.tar.gz" ]; then
    echo install python
    curl -LkSsO https://github.com/indygreg/python-build-standalone/releases/download/20230826/cpython-3.10.13+20230826-aarch64-apple-darwin-install_only.tar.gz
    tar xf cpython-3.10.13+20230826-aarch64-apple-darwin-install_only.tar.gz
    python/bin/python3 -m ensurepip
    python/bin/python3 -m pip install scons
    python/bin/python3 -m pip install cx_Freeze
fi
popd
