#!/bin/bash

pushd vcpkg
#arm-uwp,arm-windows,arm64-uwp,arm64-windows,x64-linux,x64-osx,x64-uwp,x64-windows,x64-windows-static
./vcpkg remove --outdated --recurse
#vcpkg export boostx64-linux --7zip
popd