set http_proxy=http://127.0.0.1:51080
set https_proxy=http://127.0.0.1:51080

git clone --recursive -v https://github.com/Microsoft/vcpkg.git
pushd vcpkg
call bootstrap-vcpkg.bat
vcpkg integrate remove
vcpkg integrate install
vcpkg integrate project
popd

pause