---
title: " "WslRegisterDistribution failed with error: 0xc03a001a" 的解决方法"
date: 2020-07-20T15:16:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/13345260.html)

![wsl-error-one](https://ftp.bmp.ovh/imgs/2021/03/0483a77c6f69e537.jpg)

> 在Microsoft store安装完一个Linux发行版运行后出现的error

Google了一下（百度不会搜索出解决方案的，bing倒是可以），发现在 `GitHub` 上关于这个问题已经有很多个 `Issues` 了，参照任何一种的解决方案即可，以下为几个 `Issues` 的地址：

- [#5325](https://github.com/microsoft/WSL/issues/5325)
- [#4103](https://github.com/microsoft/WSL/issues/4103)
- [#4299](https://github.com/microsoft/WSL/issues/4299)

总结汉化一下：

> 首先确定你的一些或者所有的文件夹右上角是否都有两个相对的蓝色箭头（为什么有原因自行 `google`），然后找到路径下
>
> ```bash
> C:\Users\user name\AppData\Local\Packages\CanonicalGroupLimited.xxxx  (xxx为你所下载的对应Linux发行版)
> ```
>
> 这个文件夹，若它确实是右上角带有两个相对箭头，那么：
>
> 右键 -> 属性 -> 常规 -> 高级 -> 取消勾选 `压缩内容以便节省磁盘空间` 这一项 -> 确定

再次启动所安装的 `Linux` 发行版应该就可正常使用：

![wsl-error-two](https://ftp.bmp.ovh/imgs/2021/03/47d4ee65df5a3eb3.jpg)