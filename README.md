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
