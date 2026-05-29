---
title: "Debian 13 GNOME 安装配置笔记"
date: 2025-11-01T12:00:00+08:00
draft: false
description: "也是可参考的一个安装配置笔记..."
type: post
---

最近在好多设备上都换上了原先很鄙视的 Debian 呢。

原来以为 Debian 是某种很健壮的老旧的自由软件纪念碑式的发行版，但是现在看来确实是日常能用的呢；

甚至在很多设备上开箱即用程度比 Fedora 还高得多。

比如在 Pixelbook 2017 上几乎完全就是开箱即用了，不像 Fedora 41 要配置好多好多东西都缺很多功能。

- 启用 sudo
   - `su`
   - `vim /etc/sudoers/` 在 %sudo 下面一行照着格式加上自己 id
   - `exit`

- 删除无用软件
   - `sudo apt purge gnome-terminal* fortune* golden* hdate* debian-refer* anthy* libreoffice* thunderbird* evolution mozc* ibus* xim* *thai gnome-maps* gnome-contacts* yelp* --autoremove --purge`

- 换源并更新
```
   sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list`
   sudo sed -i -e 's|security.debian.org/\? |security.debian.org/debian-security |g' \
            -e 's|security.debian.org|mirrors.ustc.edu.cn|g' \
            -e 's|deb.debian.org/debian-security|mirrors.ustc.edu.cn/debian-security|g' \
            /etc/apt/sources.list
    sudo apt update
    sudo apt upgrade
```

- 安装必要软件
   - `sudo apt install kgx vim flatpak wget fastfetch`
   - `sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`
   - `sudo flatpak remote-modify flathub --url=https://mirrors.ustc.edu.cn/flathub`
   - `sudo apt install gnome-software-plugin-flatpak`

- 启用自动对时
   - `sudo apt install systemd-timesyncd`
   - `sudo timedatectl set-ntp true`

- 配置 GNOME 并进行基础美化：
   - 整理软件列表
   - 打开 Gnome Tweak 配置窗口右上角按键
   - 打开 <https://extensions.gnome.org>
   - 安装 `blur-my-shell` `dash-in-panel` `appindicator` `kimpanel`

- 配置中文输入法：
   - 在自启动程序里加入 fcitx5
   - 在 `fcitx5-config-tool` 中配置使用中文输入法