rem set http_proxy=http://127.0.0.1:51080
rem set https_proxy=http://127.0.0.1:51080

pushd vcpkg
::arm-uwp,arm-windows,arm64-uwp,arm64-windows,x64-linux,x64-osx,x64-uwp,x64-windows,x64-windows-static
vcpkg install boost:x64-windows-static
::vcpkg export boost:x64-windows-static --7zip
popd

pause
