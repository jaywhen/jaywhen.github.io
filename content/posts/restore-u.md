---
title: "恢复U盘做启动盘后的容量"
date: 2020-01-11T12:35:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12179571.html)

 一、查看U盘索引

```
(右击)我的电脑->管理->磁盘管理
记住自己的U盘的索引名：如Disk 1
```
二、清理
```
win+R打开cmd
输入Diskpart（启动Diskpart程序）
在Diskpart中输入
select disk 1       //disk 1 是你自己磁盘的索引名
clean
```
三、新建简单卷
```
对U盘新建简单卷
```

