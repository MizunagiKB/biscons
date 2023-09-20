# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2023 MizunagiKB <mizukb@live.jp>
import sys
from cx_Freeze import setup, Executable


packages = ["SCons"]
if sys.platform in ["win32"]:
    packages.append("lief")


build_exe_options = {
    "packages": packages,
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
