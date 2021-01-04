git clone --recursive -v https://github.com/Microsoft/vcpkg.git
pushd vcpkg
./bootstrap-vcpkg.sh
vcpkg integrate remove
vcpkg integrate install
vcpkg integrate project
popd
