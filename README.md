# 1. dmvcpkg


# 2. depends (windows)

# 3. install
windows 右键管理员权限运行
```
install_vcpkg.bat
```

linux
```
./install_vcpkg.sh
```

# 4. path 处理
windows 右键管理员权限运行
```
install_vcpkg_path.bat
```

linux
```
./install_vcpkg_path.sh
```

# 5. cmake中如何引用
windows
```
rmdir /S /Q build
mkdir build
pushd build
cmake -A x64 -DCMAKE_BUILD_TYPE=relwithdebinfo -DCMAKE_TOOLCHAIN_FILE=%VCPKG_ROOT%/scripts/buildsystems/vcpkg.cmake -DVCPKG_TARGET_TRIPLET=x64-windows ..
cmake --build . --config relwithdebinfo -- /m:%NUMBER_OF_PROCESSORS%
popd
```

linux
```
rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=relwithdebinfo -DCMAKE_TOOLCHAIN_FILE=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake ..
cmake --build . --config relwithdebinfo -- -j$(nproc)
cd ..

```

# 6. vcpkg.json

https://github.com/microsoft/vcpkg/tree/master/ports

# 7. 安装指定版本例子

[vcpkg.json](./json/vcpkg.json)
[vcpkg-configuration.json](./json/vcpkg-configuration.json)