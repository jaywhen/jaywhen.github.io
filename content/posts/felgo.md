---
title: "Felgo 踩坑记"
date: 2020-06-05T14:10:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/13049418.html)

* `error while loading shared libraries: libssl.so.1.0.0: cannot open shared object file: No such file or directory`

  > 可能你的`/usr/lib`目录下没有`libssl.so.1.0.0`这个库，或者你有该库但是并不是`1.0.0`这个版本。

  * 解决办法：

    > 通过一些途径（可以是自己其他的linux系统中或者网络上获得`libssl.so.1.0.0以及libcrypto.so.1.0.0`这两个库，一般在`/usr/lib32 || /usr/lib64 || /usr/lib`目录下），博主也可mail to you，然后将这两个库放入`Manjaro`的`/usr/lib`目录下即可。