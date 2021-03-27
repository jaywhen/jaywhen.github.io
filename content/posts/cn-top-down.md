---
title: "计算机网络自顶向下方法[实验1]"
date: 2020-04-01T22:44:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12616542.html)

![cn-topdown-one.jpg](https://ftp.bmp.ovh/imgs/2021/03/36e95320a15d6faf.jpg)

### 实验概述

安装包分析软件[wireshark](https://www.wireshark.org/)。

`在以前，包分析软件非常昂贵，wireshark的出现改变了这一局面，让我不禁再一次高呼开源万岁！`

下载完后，参照实验文档，一步一步做，实验一蛮简单的，类似于书的Preface，让我们了解wireshark软件，并且用它来查看一个HTTP GET请求。

`后续的实验会介绍套接字编程以及各种网络协议`



### 实验一的一些问答题：

>1. List 3 different protocols that appear in the protocol column in the unfiltered 
> packet-listing window in step 7 above. 
>
> 答：TCP、HTTP、DNS、UDP、ARP ...... and so on
>
>2. How long did it take from when the HTTP GET message was sent until the HTTP 
> OK reply was received?
>
> 答：如图，大约0.29s。

![lab-data](https://ftp.bmp.ovh/imgs/2021/03/aef6b2bcaeb1836c.jpg)



实验以及相关习题文档总结：

[Computer-Networking-A-Top-Down-Approach-NOTES](https://github.com/moranzcw/Computer-Networking-A-Top-Down-Approach-NOTES)