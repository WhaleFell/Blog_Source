---
title: Linux Note
date: 2021-08-18 19:37:48
categories: Linux
tags: [Linux, 技术]
description: Linux Note
index_img: https://tse4-mm.cn.bing.net/th/id/OIP-C.KLeyJiJnwY9iH6bHb6HWKwEsCd?pid=ImgDet&rs=1
banner_img: https://tse4-mm.cn.bing.net/th/id/OIP-C.KLeyJiJnwY9iH6bHb6HWKwEsCd?pid=ImgDet&rs=1
excerpt: Python 异步百万并发全文最详细笔记！！
---

# Linux Notes

## 硬盘操作

### 格式化硬盘为 ETX4 格式

```shell
mkfs.ext4 /dev/*** #将硬盘格式化成 ext4 格式
```

### 设置硬盘开机挂载

```shell
# 1.通过 lsblk 命令获取磁盘分区，并挂载磁盘到mnts目录。
lsblk

# 2.通过 blkid 命令获取存储设备UUID
blkid /dev/sda

# 3.编辑 /etc/fstab 文件，在fstab最后添加存储设备信息，实现开机自动加载
vim /etc/fstab
UUID=cdfc0924-7703-40f4-b6ab-8ef3f9adbf06 /mnt/disk ext4 defaults 0 0

# 4.通过mount -a命令重新加载 /etc/fstab 内容
mount -a

# 常用查询硬盘命令
fdisk -l
df -h
```

## 进程相关

### 开机自启动某个脚本

```shell
# 编辑 systemctl 文件
vim /etc/systemd/system/ttnode.service

# 文件内容
[Unit]
Description=Python Task Service
After=network.target

[Service]
Type=simple
User=root
Group=root
ExecStart=/usr/node/ttnode -p /mnt/disk/
Restart=always
RestartSec=2
PrivateTmp=true

[Install]
WantedBy=multi-user.target

# 重载
systemctl daemon-reload
# 启动
systemctl start ttnode
# 开机自启
systemctl enable ttnode
```

