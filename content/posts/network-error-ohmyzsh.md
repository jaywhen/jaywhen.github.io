---
title: "curl:（7） Failed to connect to raw.githubusercontent.com port 443: 拒绝连接"
date: 2020-08-05T21:39:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/13442941.html)

> 在没有柯xue上网的情况下安装ohmyzsh出现的这个问题
> 完整报错：
```bash
-> sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
-> curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接
```
无法柯xue上网怎么办？
使用码云的镜像即可。
码云的出现真的可谓是国内开发者的福音，它的[镜像仓库](https://gitee.com/mirrors)更是解决了许多开发者配置环境需要翻墙的烦恼。
ohmyzsh在码云上仓库的[地址](https://gitee.com/mirrors/oh-my-zsh?_from=gitee_search)
那么只需将上述命令改为：
```bash
-> sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
```
即可