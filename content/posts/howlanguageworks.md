---
title: "这些编程语言都能干什么？"
date: 2020-10-19T16:51:09+08:00
lastmod: 2020-10-19T16:51:09+08:00
draft: true
keywords: []
description: ""
tags: []
categories: []
author: ""

# You can also close(false) or open(true) something for this content.
# P.S. comment can only be closed
comment: false
toc: false
autoCollapseToc: false
postMetaInFooter: false
hiddenFromHomePage: false
# You can also define another contentCopyright. e.g. contentCopyright: "This is another copyright."
contentCopyright: false
reward: false
mathjax: false
mathjaxEnableSingleDollar: false
mathjaxEnableAutoNumber: false

# You unlisted posts you might want not want the header or footer to show
hideHeaderAndFooter: false

# You can enable or disable out-of-date content warning for individual post.
# Comment this out to use the global config.
#enableOutdatedInfoWarning: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

![roadmap](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgproglang.jpg)

## C

​	许多高校会将c语言作为新生编程入门的教学语言，因为它语法相对（`C++` \ `Java`等编程语言）来说比较简单，编程语言的主要特性（除了面向对象）[`条件分支`、`错误处理`、`循环`等]都具有
​	c的指针特性使其可以非常方便的操控内存，而且在许多类Unix的操作系统中都有提供一些系统调用的c语言api供使用，使得它在编写一些底层驱动（比如将镜像烧写至U盘的驱动）方面十分内行。

哪些是`C`编写的？

>Linux:
>
>开源的类Unix操作系统，其打包过后的发行版被广泛应用于服务器以及嵌入式设备中。
>
>许多Linux发现版的桌面主题高度可定制化，所以许多用户也选择使用Linux作为主力操作系统：
>
>![manjaro](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgxjwnb.png)
>
>[Git](https://git-scm.com/):
>
>是一个分布式版本控制软件,最初是由Linux之父Linus Benedict Torvalds编写，后来开源。使用`Git`能够方便的管理团队协作开发的项目
>
>[OBS Studio](https://obsproject.com/):
>
>跨平台开源的录屏直播软件，b站许多up主都有在使用它，主要是C语言编写的
>
>[vim](https://www.vim.org/):
>
>Linux下知名编辑器，是老牌编辑器vi的升级版，大家要是以后学习Linux一定会接触到它。
>

<img src="https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgc.jpg" alt="c" style="zoom:80%;" />



## C++

​	`C++`(C plus plus,有时也简称为CPP)是c语言的超集，它所能做的事情比c语言多得多，可以这么说，宇宙中所有其他编程语言可做的事，c++都能做，并且能在效率与性能上的表现十分出色，主要应用于桌面客户端软件开发、游戏开发、服务端开发、计算机图形学等领域

哪些是C++编写的（哪些公司在使用c++）？

> 首先Windows与OS X这两大操作系统中有不少的部分是C++编写的（操作系统可以看作是一个巨型软件，一般来说，商用的操作系统不太可能只用一种语言编写）
>
> - Facebook的一些高性能的组件使用c++编写
>
> - 谷歌: 谷歌搜索引擎业务很大一部分是c++编写的，其次，我们经常使用的`谷歌浏览器`也是c++编写的
>
> - 跨平台软件应用程序开发框架，使用Qt可以编写出高性能、富有表现力的跨平台桌面软件，例如
>   - [wps](https://www.wps.cn/)
>   - telegram桌面客户端等都是使用`Qt框架`+`c++`编写的
>
> [虚幻引擎](https://www.unrealengine.com/zh-CN/)：Epic Games公司开发的游戏引擎
>
> [堡垒之夜](https://www.epicgames.com/store/zh-CN/product/fortnite/home)：一款第三人称射击游戏，玩过的都说好

<img src="https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgcpp.jpg" alt="cpp" style="zoom:80%;" />

## HTML + CSS

HTML **超文本标记语言**（英语：**H**yper**T**ext **M**arkup **L**anguage，简称：**HTML**）

CSS **层叠样式表**（英语：**C**ascading **S**tyle **S**heets，缩写：**CSS**）

严格来说，HTML是一种标记语言而非编程语言。HTML经常与CSS以及JavaScript联用来用于编写网站的网页部分以及移动端的用户界面。

为什么展示用户界面需要这么多语言？

举个不太恰当的例子，要是吧HTML比作人的骨架，那么CSS就是修饰骨架的外表（皮肤，五官），JavaScript则可以使这个“人”动起来

哪些是HTML+CSS编写的？

> 你所看到的所有网页，以及钉钉桌面版、Vs code中都有用到HTML+CSS，可以看出，在web开发中，HTML+CSS是必不可少的



## JavaScript

​	首先明确一点，JavaScript与Java没有多大的关系，二者在名字或语法上或许有很多相似性，但这两门编程语言从设计之初就有很大的不同，JavaScript的语言设计主要受到了Self（一种基于原型的编程语言）和Scheme（一门函数式编程语言）的影响。在语法结构上它又与C语言有很多相似（例如if条件语句、switch语句、while循环、do-while循环等）

​	如前所述，在web方面（无论是前端还是后端）都有JavaScript的一席之地，并且如果你选择走web前端方向，那么JavaScript是你必须花费主要精力去学习的一门编程语言（因为HTML与CSS的语法相对来说比较简单）

JavaScript能做什么？

> - 制作富有表现力的网页（什么是富有表现力？可以去[苹果官网](https://www.apple.com.cn/iphone-12-pro/)对iPhone 12Pro的介绍页面看看）
>
> - 桌面软件开发
>
>   > 在以前，桌面软件开发几乎是C++一家独大，那时桌面端的百分之九十以上的软件几乎都是c++开发的，而在后来许多基于JavaScript的客户端桌面软件开发框架出现后，使得许多互连网公司争相使用前端技术JavaScript（以及一点点HTML+CSS）来开发桌面软件，原因总结如下：
>   >
>   > - 相较于C++，JavaScript学习起来稍微轻松一些，因此前端人才相较于熟悉C++的人才好招聘一些，公司里面不缺优秀的前端工程师
>   > - 相较于传统的客户端桌面程序开发方案，使用JavaScript可以更快的编写出用户体验友好并且性能良好的应用程序，但如果需要编写的桌面程序对性能要求稍高（如大型游戏、集成开发环境、Photoshop等），则还是应该使用其他语言（c++等），因为在此领域的性能方面来看，后者是优于前者的
>
> - 使用JavaScript（typescript）编写的软件有：
>
>   - [钉钉](https://www.dingtalk.com/)桌面版
>   - [Visual studio code](https://code.visualstudio.com/)（注意是visual studio code而不是[visual studio](https://visualstudio.microsoft.com/zh-hans/vs/)，前者是编辑器，后者是集成开发环境（IDE）虽然它们都是微软开发的）
>   - [Steam](https://store.steampowered.com/)桌面端（没错就是那个steam!）
>   - 网易云音乐桌面端

<img src="https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgjs.jpg" alt="JavaScript" style="zoom:80%;" />

## Java

Java是一门强大的、跨平台的、适合企业开发的编程语言，广泛应用于企业级Web应用开发和移动应用开发。
在Web端，Java主要用于编写web后端应用，为前端的数据展示层提供服务；

在移动端，Java用于编写基于Android操作系统的手机应用程序；

同样，Java也能做桌面软件的开发，例如，Java程序员经常使用的集成开发环境[IntelliJ IDEA](https://www.jetbrains.com/idea/)却是Java编写的，但是在现如今，使用Java来开发桌面软件已经不是主流。

哪些是Java做的（哪些公司在使用Java）？

> - 许多电商平台（某宝、狗东、pdd等）都在使用Java来做服务端应用开发
> - 安卓手机上的大部分应用程序（有少部分使用的跨平台开发方案开发，使用的语言并不是Java）
> - IntelliJ IDEA、华为鸿蒙的开发工具[DevEco Studio](https://developer.huawei.com/consumer/cn/deveco_studio)

<img src="https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgjava.jpg" alt="java" style="zoom:80%;" />

## Pyhon

[Python](https://www.python.org/)是一门简单有趣的编程语言，我非常推荐选择python作为编程入门语言，因为它语法十分简单，并且功能强大。
python可以用于web后端开发、网络爬虫、桌面客户端程序开发、科学计算、数据分析、人工智能（以及下面的机器学习、深度学习等分支）等许多领域。

python可以做什么（哪些是python做的）？

> 网络爬虫 && 数据分析：
>
> - 互连网充斥着大量信息，其不可谓不繁杂。要是我想快速获取NBA今年来常规赛各球队的胜负场次数据，或者我想获取一份某平台游戏主播的用户打赏收入数据、亦或者我想统计某明星在微博中有多少真粉丝又有多少假粉丝，着些都可以用python写网络爬虫脚本结合数据分析库来完成
>
> web后端开发（适合小型网站开发，若规模达到淘宝这样的还是使用Java吧）：
>
> - Instagram网页版，后端使用python开发，用到的框架有Django
> - [知乎](https://www.zhihu.com/hot?list=sport)的后端
>
> 桌面客户端程序开发：
>
> - 如果要哟python开发客户端桌面应用的话可以使用Qt框架，Qt不仅支持C++，同时也支持python，要是想要你的应用程序跨平台并且规模并不大的话，可以使用python
>
> AI（人工智能）:
>
> - 你们寝室楼下的人脸识别门禁
> - 小爱同学、微软小娜、Siri
> - 学校对面那U城B馆一楼的智障机器人
> - 各大电商平台的商品推荐系统（资本家的陷阱）、视频网站的视频电影推荐系统
> - 无人驾驶

<img src="https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgpy.jpg" alt="python" style="zoom:80%;" />

## PHP

**（由于我不太了解php，所以这部分内容偏主观和片面）**

首先，按照惯例：**php是世界上最好的语言！**
开玩笑，言归正传。

**PHP**（全称：**P**HP：**H**ypertext **P**reprocessor，即“PHP：超文本预处理器”）是一种开源的通用计算机脚本语言，尤其适用于网络开发并可嵌入HTML中使用。PHP的语法借鉴吸收C语言Java和Perl等流行计算机语言的特点，易于一般程序员学习。PHP的主要目标是允许网络开发人员快速编写动态页面，但PHP也被用于其他很多领域。

很显然，你想开发网站，并且需求量不大，那么PHP是一个不错的选择

（？这句话我好像在哪听过）

哪些公司在使用php？

> - Facebook：Facebook的主要业务是PHP负责的
> - 特斯拉：特斯拉的网站
> - MIT：麻省理工的一些网站

<img src="https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgphp.jpg" alt="php" style="zoom:80%;" />

​	的确无论是PHP还是python，都不适合开发规模庞大且高性能的网站，虽然扎克伯格仅仅用两周的时间就写出了Facebook，但后来，Facebook遇到了php的性能问题，当时Facebook内部讨论这个问题，提出了几个方案其中一个就是用Java重构，这个呼声还是蛮高的。但是有个问题，facebook原有的代码几千万行，如果重构相应的培训，还有技术选型，都需要时间金钱，而且相应的功能还在追加，代码量还在加，完全停下来重构，估了一下时间大概要一年，在互联网时代这意味着退场。在这百般焦急之际，有个叫赵海平的华人工程师提出把php代码中间转一道转成c++代码，这样就行，他不光说还亲自开发了还成了——HipHop也就是现在著名的php虚拟机hhvm的雏形（即使现在已经完全不参与hhvm的研发，但是基础代码还是在用赵海平的）。

许多公司发展的时候，会遭遇性能瓶颈问题，这时候，要么就是达到性能要求的新语言新工具重构，要么就是像脸书阿里重新做个虚拟机。但是重新做个虚拟机，技术储备人才要求不小，也就脸书阿里这种体量的,大部分公司技术储备不到这个水平，这样考虑还是砸钱重构来的实际。那位在脸书做出php虚拟机的赵海平，现在在阿里开发taobaojvm。

​	这就表明了不是php、python不能做高性能web服务，只是选择一门语言作为项目的启动语言时，还需要考虑自身的实力与所拥有的资源，这也就是为什么没有最好的语言，只有最合适的语言的说法，同学们也要切记，编程语言只是一个工具，语言不在会的多而在精。并且在计算机编程这一领域中，编程语言只是一项分支，并不是我只会了某门或多门编程语言就可以开发任何工具了，我们还要掌握`数据结构与算法`、`计算机网络`、`操作系统`等专业硬知识，才具备计算机相关行业从业者的资格。

![shit](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgbqb.jpg)



