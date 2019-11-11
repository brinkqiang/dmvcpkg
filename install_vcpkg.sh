git clone --recursive -v https://github.com/Microsoft/vcpkg.git
pushd vcpkg
bash bootstrap-vcpkg.sh
vcpkg integrate remove
vcpkg integrate install
vcpkg integrate project
vcpkg integrate powershell
popd
