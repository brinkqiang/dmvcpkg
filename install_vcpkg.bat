rem set http_proxy=http://127.0.0.1:51080
rem set https_proxy=http://127.0.0.1:51080

rem git clone --recursive -v https://github.com/brinkqiang2cpp/vcpkg.git
git clone --recursive -v git@github.com:microsoft/vcpkg.git


pushd vcpkg
call bootstrap-vcpkg.bat
echo vcpkg integrate remove
echo vcpkg integrate install
echo vcpkg integrate project
popd

pause