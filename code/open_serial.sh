#!/bin/bash
sleep 10
# 检测网络连接
if ping -q -c 1 -W 1 223.5.5.5  >/dev/null; then
    echo "网络连接成功"
else
    echo "网络连接失败"
    # 加载g_serial模块
    modprobe g_serial
    # 运行agetty命令
    agetty -L ttyGS0 115200 vt100
fi