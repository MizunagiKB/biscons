# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2023 MizunagiKB <mizukb@live.jp>
from cx_Freeze import setup, Executable

build_exe_options = {
    "packages": ["SCons", "lief"],
    "excludes": ["tkinter"],
    "zip_include_packages": ["encodings"],
}

setup(
    name="biscons",
    version="0.0",
    description="[Bi]nary [SCons]",
    options={"build_exe": build_exe_options},
    executables=[Executable("biscons.py", base=None)],
)
