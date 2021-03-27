---
title: "Hugo简化部署操作"
date: 2020-03-22T02:17:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12543854.html)

适用于Hugo even主题：

在对网站进行了修改操作后，我们总是要先`cd`进`public`目录，

然后`git add .` `git commit -m "balabala"` `git push`
这样做会感到非常繁琐，于是我们可以在博客根目录下创建一个shell脚本来简化部署操作

首先在根目录下（与config.toml同一个目录下）创建一个`deploy.sh`(当然名字自取)

```sh
#!/bin/sh
hugo -t even # 我使用的是even主题，所以是 -t even
cd  /d/hugo/blog/public
git add .
git commit -m "modify"
git push
```

Windows下在powershell或者MINGW中执行

```
source ./deploy.sh
或
. ./deploy.sh
二者效果相同，后者为前者的简化写法
```

如果不加`.` , 直接`./deploy.sh`的话，并不会切换到public目录下，因为shell在执行脚本时，会创建一个子shell，并在子shell中逐个执行脚本中的指令； 而子shell中从父shell中继承了环境变量，但是执行后不会改变父shell的环境变量；如果想要代码中切换目录的操作生效，就需要通过source 命令执行。