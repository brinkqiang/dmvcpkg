set http_proxy=http://127.0.0.1:51080
set https_proxy=http://127.0.0.1:51080

pushd vcpkg
vcpkg install boost:x64-windows

popd