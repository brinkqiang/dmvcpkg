#!/bin/bash

#git clone --recursive -v git@github.com:brinkqiang2cpp/vcpkg.git
git clone --recursive -v git@github.com:microsoft/vcpkg.git

pushd vcpkg
./bootstrap-vcpkg.sh
echo ./vcpkg integrate remove
echo ./vcpkg integrate install
echo ./vcpkg integrate project
popd
