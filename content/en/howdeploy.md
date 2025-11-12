---
title: "这个服务器是怎么部署的呢？"
date: 2025-11-12T8:00:00+08:00
draft: false
description: "是一个介绍，同时也是给自己的一份备忘录喵～"
type: post
---

这个服务器是什么呢？它托管了什么服务呢？

就目前来讲，它托管了：

- SSH/SFTP 服务

- HTTPS 静态网页服务

- Trojan 代理服务

- Telegram 群组与 IRC 频道桥接服务

因此，就目前来讲，本服务器部署起来应当是相对来说较为容易的。

SSH/SFTP 服务是 Debian 自带的，只需要简单的上传本机公钥到信任密钥列表即可简便的使用。

Trojan 代理服务和 HTTPS 静态网页服务是绑定在一起实现的。 HTTP 的静态网页文件是通过 Hugo 从博客的 Repo 生成的，而静态网页服务则是由 Caddy 简单的实现的。 Trojan 同时作为 HTTPS 反代服务器和代理服务器而工作，使用着 Certbot 在 Caddy 的 HTTP 服务提供的基础上生成的 SSL/TLS 密钥。 因此只需要简单的部署 Git, Hugo, Caddy, Certbot, Trojan 即可。

Telegram 与 IRC 群组的桥接服务是通过 TeleIRC 项目实现的，其作为一个 systemd daemon 在后台持续运行着。 运行已有的部署脚本并配置好相关参数即可安装该服务并启用。

这个服务器就是这样部署的喵。

是一个介绍，也是给自己的一个备忘录喵。