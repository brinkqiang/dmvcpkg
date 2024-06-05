# 1. dmvcpkg


# 2. depends (windows)

## 2.1. git version >= 2.24.0

## 2.2. cmake version >= v3.22.2 https://github.com/Kitware/CMake/releases/download/v3.22.2/cmake-3.22.2-windows-i386.zip


## 2.3. powshell version >= 7.4.1  https://github.com/PowerShell/PowerShell/releases/download/v7.4.1/PowerShell-7.4.1-win-x64.msi

### vc编译提示 pwsh问题， 是因为PowerShell版本太低不支持对应的命令。

## 2.4. 7z version >= v21.7.0 https://www.7-zip.org/a/7z2107-extra.7z

## 2.5. ninja version >= v1.10.1 ninja-win-1.10.1.zip

# 3. depends (linux)

## 3.1. ninja version >= v1.10.2

# 4. build

## 4.1. windows 首次 install_vcpkg.bat 右键管理员权限运行

# 5. test
## 5.1 run sample/dmspawn/build.bat|sh
## 5.2 mod sample/dmspawn/CMakeLists.txt
```
    SET(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/../../../dmvcpkg/vcpkg/scripts/buildsystems/vcpkg.cmake")
```

# 6. vcpkg.json

https://github.com/microsoft/vcpkg/tree/master/ports