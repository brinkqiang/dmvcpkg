#!/bin/bash

# 添加或替换永久环境变量
# 参数：
# $1 - 变量名
# $2 - 变量值

function add_or_replace_permanent_env_var() {
  local var_name=$1
  local var_value=$2

  # 检查变量是否已经存在于/etc/environment文件中
  if grep -q "${var_name}=" /etc/environment; then
    # 用新值替换变量的旧值
    sudo sed -i "s/^${var_name}=.*/${var_name}=\"${var_value}\"/" /etc/environment
    echo "永久环境变量 "${var_name}=\"${var_value}\"" 已被替换"
  else
    # 将新的键值对添加到/etc/environment文件中
    echo "${var_name}=\"${var_value}\"" | sudo tee -a /etc/environment > /dev/null
    echo "已经创建永久环境变量："${var_name}=\"${var_value}\"""
  fi

  # 使更改生效
  source /etc/environment
}

# 示例：添加或替换两个永久环境变量

add_or_replace_permanent_env_var "VCPKG_ROOT" "$(pwd)"
