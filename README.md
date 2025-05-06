# dmvcpkg

Windows/Linux 的 vcpkg 项目管理解决方案

## 📦 依赖管理

### Windows 依赖
- 需要预先安装 Visual Studio 2019/2022
- 需要 Windows SDK 10/11

## 🛠️ 安装指南

### Windows
1. 右键以管理员权限运行：
```bash
install_vcpkg.bat
```
2. 配置环境变量：
```bash
install_vcpkg_path.bat
```

### Linux
```bash
chmod +x *.sh
./install_vcpkg.sh
./install_vcpkg_path.sh
```

## 🏗️ 构建指南

### Windows
```cmd
rmdir /S /Q build
mkdir build
pushd build
cmake -A x64 -DCMAKE_BUILD_TYPE=relwithdebinfo -DCMAKE_TOOLCHAIN_FILE=%VCPKG_ROOT%/scripts/buildsystems/vcpkg.cmake -DVCPKG_TARGET_TRIPLET=x64-windows ..
cmake --build . --config relwithdebinfo -- /m:%NUMBER_OF_PROCESSORS%
popd
```

### Linux
```bash
rm -rf build
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=relwithdebinfo -DCMAKE_TOOLCHAIN_FILE=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake ..
cmake --build . --config relwithdebinfo -- -j$(nproc)
cd ..
```

### 其他平台支持
```
vcpkg help triplet
```

---

### Built-in Triplets

| Triplet 全名          | 架构    | 平台      | 变体       |
|-----------------------|---------|-----------|------------|
| arm-neon-android      | arm     | android   | neon       |
| arm64-android         | arm64   | android   |            |
| arm64-osx             | arm64   | osx       |            |
| arm64-uwp             | arm64   | uwp       |            |
| arm64-windows         | arm64   | windows   |            |
| x64-android           | x64     | android   |            |
| x64-linux             | x64     | linux     |            |
| x64-osx               | x64     | osx       |            |
| x64-uwp               | x64     | uwp       |            |
| x64-windows-static    | x64     | windows   | static     |
| x64-windows           | x64     | windows   |            |
| x86-windows           | x86     | windows   |            |

---

### Community Triplets

| Triplet 全名                          | 架构         | 平台              | 变体                   |
|---------------------------------------|--------------|-------------------|------------------------|
| arm-android                          | arm          | android           |                        |
| arm-ios                              | arm          | ios               |                        |
| arm-linux-release                    | arm          | linux             | release                |
| arm-linux                            | arm          | linux             |                        |
| arm-mingw-dynamic                    | arm          | mingw             | dynamic                |
| arm-mingw-static                     | arm          | mingw             | static                 |
| arm-uwp-static-md                    | arm          | uwp               | static-md              |
| arm-uwp                              | arm          | uwp               |                        |
| arm-windows-static                   | arm          | windows           | static                 |
| arm-windows                          | arm          | windows           |                        |
| arm64-ios-release                    | arm64        | ios               | release                |
| arm64-ios-simulator-release          | arm64        | ios               | simulator-release      |
| arm64-ios-simulator                  | arm64        | ios               | simulator              |
| arm64-ios                            | arm64        | ios               |                        |
| arm64-linux-release                  | arm64        | linux             | release                |
| arm64-linux                          | arm64        | linux             |                        |
| arm64-mingw-dynamic                  | arm64        | mingw             | dynamic                |
| arm64-mingw-static                   | arm64        | mingw             | static                 |
| arm64-osx-dynamic                    | arm64        | osx               | dynamic                |
| arm64-osx-release                    | arm64        | osx               | release                |
| arm64-uwp-static-md                  | arm64        | uwp               | static-md              |
| arm64-windows-static-md              | arm64        | windows           | static-md              |
| arm64-windows-static-release         | arm64        | windows           | static-release         |
| arm64-windows-static                 | arm64        | windows           | static                 |
| arm64ec-windows                      | arm64ec      | windows           |                        |
| armv6-android                        | armv6        | android           |                        |
| loongarch32-linux-release           | loongarch32  | linux             | release                |
| loongarch32-linux                    | loongarch32  | linux             |                        |
| loongarch64-linux-release           | loongarch64  | linux             | release                |
| loongarch64-linux                    | loongarch64  | linux             |                        |
| mips64-linux                         | mips64       | linux             |                        |
| ppc64le-linux-release                | ppc64le      | linux             | release                |
| ppc64le-linux                        | ppc64le      | linux             |                        |
| riscv32-linux-release               | riscv32      | linux             | release                |
| riscv32-linux                        | riscv32      | linux             |                        |
| riscv64-linux-release               | riscv64      | linux             | release                |
| riscv64-linux                        | riscv64      | linux             |                        |
| s390x-linux-release                  | s390x        | linux             | release                |
| s390x-linux                          | s390x        | linux             |                        |
| wasm32-emscripten                    | wasm32       | emscripten        |                        |
| x64-freebsd                          | x64          | freebsd           |                        |
| x64-ios                              | x64          | ios               |                        |
| x64-linux-dynamic                    | x64          | linux             | dynamic                |
| x64-linux-release                    | x64          | linux             | release                |
| x64-mingw-dynamic                    | x64          | mingw             | dynamic                |
| x64-mingw-static                     | x64          | mingw             | static                 |
| x64-openbsd                          | x64          | openbsd           |                        |
| x64-osx-dynamic                      | x64          | osx               | dynamic                |
| x64-osx-release                      | x64          | osx               | release                |
| x64-uwp-static-md                    | x64          | uwp               | static-md              |
| x64-windows-release                  | x64          | windows           | release                |
| x64-windows-static-md-release       | x64          | windows           | static-md-release      |
| x64-windows-static-md                | x64          | windows           | static-md              |
| x64-windows-static-release          | x64          | windows           | static-release         |
| x64-xbox-scarlett-static             | x64          | xbox-scarlett     | static                 |
| x64-xbox-scarlett                    | x64          | xbox-scarlett     |                        |
| x64-xbox-xboxone-static              | x64          | xbox-xboxone      | static                 |
| x64-xbox-xboxone                     | x64          | xbox-xboxone      |                        |
| x86-android                          | x86          | android           |                        |
| x86-freebsd                          | x86          | freebsd           |                        |
| x86-ios                              | x86          | ios               |                        |
| x86-linux                            | x86          | linux             |                        |
| x86-mingw-dynamic                    | x86          | mingw             | dynamic                |
| x86-mingw-static                     | x86          | mingw             | static                 |
| x86-uwp-static-md                    | x86          | uwp               | static-md              |
| x86-uwp                              | x86          | uwp               |                        |
| x86-windows-static-md                | x86          | windows           | static-md              |
| x86-windows-static                   | x86          | windows           | static                 |
| x86-windows-v120                     | x86          | windows           | v120                   |

---


## 📄 配置文件示例

### vcpkg 官方仓库
https://github.com/microsoft/vcpkg/tree/master/ports

### 版本控制模板
- [vcpkg.json](./json/vcpkg.json)
- [vcpkg-configuration.json](./json/vcpkg-configuration.json)

## ⚠️ 注意事项
1. 所有批处理文件需以管理员权限运行
2. 确保系统已安装最新版 git
3. 建议预留至少 5GB 磁盘空间
4. 首次安装需要较长时间（约15-30分钟）
