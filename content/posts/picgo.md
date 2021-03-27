---
title: "Github+PicGo+jsdelivr图床：Let your Markdown fly！"
date: 2020-04-01T23:58:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12531801.html)

![cover](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgmd-picgo.jpg)

### 图床需求分析

> 当我们要传送markdown文件时，里面的图片链接也许是你从本地直接拖到文本编辑器里面的，亦或者是从别的网络上复制粘贴过来的，这样的图片链接往往是不稳定的，随时可能崩或者根本无法显示，所以我们需要一个稳定且方便使用的图床。

### 前期试错
> 由于之前一直在博客园写笔记，图片都是直接拖到编辑页面上的，头脑中并没有一个私人图床的概念。直到搭建了[个人博客后](www.jaywhen.com)，才明白图床的重要性。一开始我以为可以直接二次使用博客园图片的链接，然而，在经历过几次图片加载失败后，我才明白像诸如博客园、CSDN这种网站的图床是不能直（bai）接（piao）使用的，都有防盗（图）机制，于是开始寻找图床，目前主流的图床方案有：
> * 传到自己的服务器上 （需要一定的技术储备于时间）
> * 私有云上，并生成链接，价格也不贵，几乎免费 （本来选的七牛云的，结果身份证过期了，注册不了）
> * Github+PicGo+jsdelivr （非常郝！没有jsdeliver也行，就是图片加载略慢）

### 开始搭建
* GitHub：创建一个图床仓库，并获得一个Personal access token，将token保存下来，方便第二步填token（关于如何获得token，参考我[这篇笔记](https://www.cnblogs.com/Jaywhen-xiang/p/12335483.html)）

* PicGo：“图片上传+管理新体验”——PicGo's slogan，简而言之，PicGo是一个图片上传工具，并且有强大的管理功能，[PicGo的详细介绍](https://picgo.github.io/PicGo-Doc/zh/guide/)。

  - [安装PicGo]([https://picgo.github.io/PicGo-Doc/zh/guide/#%E4%B8%8B%E8%BD%BD%E5%AE%89%E8%A3%85](https://picgo.github.io/PicGo-Doc/zh/guide/#下载安装))

  - 配置PicGo & jsdelivr：

    > 如图是我的配置项：
    > ![content](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgpicgo.jpg)
    >
    > * 设定仓库名：GitHub上对应的图床的仓库名，需要注意，仓库名不能有空格
    > * 设定Token：第一步申请的token粘贴上去
    > * 指定存储路径：存储在GitHub对应仓库的哪一个文件夹下？
    > * 设定自定义域名：加上`https://cdn.jsdelivr.net/gh/`相对于使用了jsdelivr，一个开源的CDN，能够使图片加载速度更快，且无需任前期准备（在我还不知到CDN时，我以为用它需要安装配置）路径`/gh/`表示使用的GitHub仓库，域名后面部分就是你的仓库名

### 图片上传注意事项

> 配置好PicGo后就可以拖动本地图片到上传区了，注意：
>
> * 图片名最好是英文
> * 名字不能包含`-`、空格、等一系列特殊符号

