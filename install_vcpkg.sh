#!/bin/bash

git clone --recursive -v https://github.com/brinkqiang2cpp/vcpkg.git
pushd vcpkg
./bootstrap-vcpkg.sh
echo ./vcpkg integrate remove
echo ./vcpkg integrate install
echo ./vcpkg integrate project
popd
