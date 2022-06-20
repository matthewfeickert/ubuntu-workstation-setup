#!/bin/bash

_CPYTHON_VERSION=3.10.3
# Use --enable-shared to allow for ROOT to build
echo "# Building CPython v${_CPYTHON_VERSION}"
PYTHON_CONFIGURE_OPTS="--with-ensurepip --enable-optimizations --with-lto --enable-loadable-sqlite-extensions --enable-ipv6 --enable-shared" \
    PYTHON_MAKE_OPTS="-j8" \
    pyenv install --force "${_CPYTHON_VERSION}"

unset _CPYTHON_VERSION
