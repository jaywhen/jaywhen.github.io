---
title: "记GitHub Pages遭受的一次中间人攻击"
date: 2020-03-27T16:37:17+08:00
lastmod: 2020-03-27T16:37:17+08:00
draft: false
keywords: []
description: ""
tags: [GitHub]
categories: [杂谈]
author: ""

---

<!--more-->
![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgfailed.jpg)
> 2020.3.26 GitHub Pages遭受中间人攻击，导致包括本站在内的大量部署在GitHub Pages上的静态博客出现了SSL证书问题，无法访问。
## 问题原因及应对措施概述
有组织或个人使用BGP劫持将 `xxx.github.io.com`的IP地址指向了使用`346608453@qq.com`的自签名的证书的服务器，由于浏览器并不信任该证书，所以出现无法访问的情况，但经分析，使用以下几种方法依然能够正常访问：

* 搭梯子从国外访问被劫持的网站
* [DoH+ESNI直连](https://www.zhihu.com/answer/1107698817)
* [修改host文件](https://www.zhihu.com/answer/1108013687)
* ......
## 个人看法
首先这件事情对我还是造成了些许影响的😶。由于菜，一开始我以为时我的GitHub Pages证书过期了，于是去重置域名解析，当然这并不起效，于是就弄了一下午，期间还给GitHub的客服反馈了情况，（在第二天问题解决时发来了回复）：
![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgfeedback.jpg)
直到当时确实想不出什么办法后，开始刷知乎，发现原来大家都是这样，并且京东主页也短暂性的出现过这个情况，考虑到这种事情并不是我等菜鸟所能左右的，于是乎放下执念去打游戏了hhhh。
## 思考
一定要重视网络安全啊！！！
![network](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgneork.jpg)

> ps(这本书的中译版真是一言难尽)



参考链接：

[知乎：如何看待2020 年 3 月 26 日 GitHub 疑似遭受中间人攻击？](https://www.zhihu.com/answer/1107698817)

[V2EX: Github pages 的 HTTPS 是不是出问题了？](https://www.v2ex.com/t/656367?p=1)

