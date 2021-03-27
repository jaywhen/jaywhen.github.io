---
title: "Mysql workbench中sql字段名的坑"
date: 2020-09-20T00:24:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/13698301.html)

![error](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgmysql-workbench-one.png)
> 如图，在Mysql workbench中建表写字段名的时候如果写成 
> '<字段名>' 值类型 约束条件 【如下图】
> 的形式将会出错
> ![error-1](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgmysql-workbench-two.png)


> 应写成
> `<字段名>` 值类型 约束条件
> 其中符号 `` 为键盘左上角 `ESC` 键下方带有 `~` 的键
> 如下图
> ![work](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgmysql-workbench-three.png)