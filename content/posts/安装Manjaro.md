---
title: "安装Manjaro"
date: 2020-03-10T17:05:14+08:00
lastmod: 2020-04-28T14:34:17+08:00
draft: false
keywords: []
description: "The most beautiful Linux distribution"
tags: [Manjaro]
categories: [Linux]
author: ""
---
<!--more-->

![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgxjwnb.png)

- - -
### 不再更新，虚拟机更加符合我的需求，首发于[我的博客园](https://www.cnblogs.com/Jaywhen-xiang/p/11561661.html)

> 此文为本人原创，以下链接的文章都是部分**盗用本人的图或者内容**，欢迎大家发我与本人这篇文章相似度大的博文链接！
> - [【Liunx】manjaro双系统安装（折腾）教程](https://www.cnblogs.com/HGNET/p/12712977.html)

- - -

### 〇、README

> 1. 本人电脑相关配置：**单硬盘** **UEFI+GPT格式启动** **Win10家庭版**
> 2. 如上所说，本篇博文只适用于启动方式为**UEFI+GPT**

### 一、前言

> `Manjaro`是一款基于Arch Linux的、用户友好的发行版，虽然`Manjaro is not Arch`，但它依然能够从`AUR(Arch User Repository)`中提取软件包，且有自己的独立库。
>
> 它有且不仅有如下特性：
>
> * **Pre-installed** （在你还没正式安装时，你便可从启动盘直接流畅体验它的桌面系统）
> * 快、强、高效
> * 滚动发布，无需定期更新系统版本
> * ......

### 二、准备工作

1. **查看电脑的启动方式:**

   >目前主流的两种启动系统的方式：
   >**legacy**启动+**MBR**分区表
   >
   >**UEFI**启动+**GPT**分区表
   >
   >我们需要查看自己硬盘使用的哪种分区：
   >
   >
   >
   >```
   >文件资源管理器->（右键）此电脑->管理->磁盘管理
   >```
   >
   >![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgdiskto.png)
   >
   >由于我的电脑是[单硬盘]，所以只有一个磁盘0
   >右键选择一个磁盘->属性->卷
   >在磁盘分区形式一栏中可以看到是GPT or MBR







2. **下载manjaro镜像：**

   > 对一般用户而言，官网下载镜像的速度会非常慢，所以这里可选择在[清华大学开源软件镜像站](https://mirrors.tuna.tsinghua.edu.cn/osdn/storage/g/m/ma/manjaro/kde/)下载manjaro kde 的镜像文件：
   >
   > ![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgtun.jpg)






3. **制作启动盘：**

   > ![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgrufu.png) 
   >  
   > 制作启动盘官方文档推荐使用[Rufus](http://rufus.ie/)或[Image Writer](https://launchpad.net/win32-image-writer/)，我这里使用Rufus来制作
   > ps:rufus是用c写的（难怪这么快），是一个开源项目，有兴趣的小伙伴可以去它的[github](https://github.com/pbatard/rufus/tree/master/src)上研究研究
   > 最新版本的Rufus可能无法选择分区类型，可以选择下载低版本
   > 如上图所示，个人感觉`FossHub`上的快些    
   >
   > 
   >
   > 插入u盘，打开`Rufus`，我的分区类型一栏选择的是`GPT`，其他的都为默认，
   >
   > 点击`开始`后弹出该窗口，点击以`DD`镜像模式写入
   > ![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgd.png)
   >
   > 




4. **在Windows上为manjaro分配磁盘空间：**

   ><kbd>此电脑</kbd>--<kbd>管理</kbd>--<kbd>磁盘管理</kbd>
   >选一块空间充裕的盘，从上面分一部分空间（大小因需求而异）:
   >
   ><kbd>空间充裕的盘</kbd>--<kbd>压缩卷</kbd>--<kbd>想要分配的空间大小</kbd>--<kbd>压缩</kbd>
   >
   >压缩完了就可暂时不用管了，**不用格式化**，后面会用到




5. **关闭windows快速启动与安全启动**

   > 快速启动：参考[这篇文章](https://jingyan.baidu.com/article/48b558e30ca7977f38c09a95.html)
   > 安全启动：<kbd>BIOS</kbd>--<kbd>System Configuration</kbd>--<kbd>Boot Options</kbd>--<kbd>Secure Boot</kbd>--<kbd>Disabled</kbd> 





### 三、开始安装

1. **设置从U盘启动：**
   <kbd>Windows设置</kbd>--<kbd>更新和安全</kbd>--<kbd>恢复</kbd>--<kbd>立即重新启动</kbd>

2. **配置选项**

   >成功从U盘启动后，首先会进入配置界面，唯一需要注意的是**driver**的选择
   >
   >参考Manjaro用户指南：
   >
   >```
   >Free :
   >
   >drivers are open-source, like Manjaro itself, written and updated by a large 
   >
   >community. For AMD graphics cards and hardware with Intel-based integrated 
   >
   >graphics, this is the best choice.
   >
   >Non-Free :
   >
   >drivers are closed-source, written and updated only by the hardware manufacturers. 
   >
   >This is generally the best choice for newer Nvidia dedicated graphics. For older 
   >
   >Nvidia hardware the Free drivers work very well.
   >
   >If in doubt, choose Free drivers. If you want to play games with an Nvidia 
   >
   >graphics card, choose non-Free drivers.
   >
   >/* 来自我的渣渣翻译...... */
   >
   >(满足以下条件选择)Free:
   >驱动是开源的，例如Manjaro自身，由一个大型社区编写与更新；
   >AMD的显卡 || 基于Intel的集显；
   >很老的Nvidia显卡；
   >实在不知道怎么选，或者条件(模糊)都不怎么满足
   >
   >(满足以下条件选择)Non-Free:
   >驱动是闭源的，仅由硬件制造商编写与更新；
   >新的Nvidia显卡；
   >想用Nvidia显卡打游戏
   >
   >
   >
   >```
   >
   >如下表：
   >
   >
   >
   >|  Free  |  Non-Free  |
   >| :---:  | :----: |
   >| 开源驱动 | 闭源驱动 |
   >|  AMD显卡  | 新Nvidia显卡 |
   >|  基于Intel的集显  | 想用Nvidia显卡打游戏 |
   >| 老的Nvidia显卡 |     |
   >| 实在不知道怎么选(条件都不满足) |  |
   >
   >设置完毕后，<kbd>enter</kbd>Boot进入桌面
3. **分区**

   >选择手动分区
   >
   >我的划分表(共60G)：
   >
   >|   大小   | 文件系统  | 挂载点 |   标记   |                             用途                             |
   >| :------: | :-------: | :----: | :------: | :----------------------------------------------------------: |
   >|    8G    | linuxswap |        |   swap   | [about swap](https://www.cnblogs.com/kerrycode/p/5246383.html) |
   >|   500M   |   ext4    | /boot  |   boot   |                  存放与Linux启动相关的程序                   |
   >|   20G    |   ext4    |   /    |   root   |                 用于存放系统相当于win10的C盘                 |
   >| the rest |   ext4    | /home  | 无需标记 |                         用户数据存储                         |
   >
   >找到在Windows上划分的空闲区,点击创建
   >
   >`swap`
   >
   >![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgswa.png)
   >
   >`boot`
   >![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgboo.png)
   >`/`
   >![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgroo.png)
   >`/home`
   >![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imghom.png)

4. **挂载Manjaro引导**

   >此时找到大小为100M的分区
   >这里面有Windows的引导分区，所以内容点保留
   >将manjaro也挂载在上面，如图所示：
   >![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgef.png)








### 四、完成


> ![](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgove.png)
> 一切才刚刚开始...
### 五、配置
`sudo pacman-mirrors -c China -m rank # 更改源`



增加中文社区的源，在 `/etc/pacman.conf` 中添加 `archlinuxcn` 源，加上：

```
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```

安装 `archlinuxcn-keyring` 包以导入 `GPG key`，否则的话 key 验证失败会无法安装：

```
sudo pacman -Sy archlinuxcn-keyring
sudo pacman -Syy #更新
```

`sudo pacman -S yay						# Arch Linux AUR 包管理工具`

```
# 解决双系统时间不同步问题
timedatectl set-local-rtc true
```

输入法：

```
sudo pacman -S fcitx fcitx-configtool
//建议就这样，然后在fcitx设置里面选择自带的拼音输入法和英语输入法就好了
//搜狗输入法总是用不了多久就出bug，很不稳定，会造成不必要的麻烦
//以下是安装搜狗输入法
sudo pacman -S fcitx-gtk2 fcitx-gtk3 fcitx-qt4 fcitx-qt5 fcitx-sogoupinyin
#解决中文输入法无法切换问题: 添加文件 ~/.xprofile：
export GTK_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
#若以上执行完后无法输入中文，只能显示字母
#删掉~/.conf下所有与Sogou相关的文件夹
yay -S fcitx -im
sudo pacman -S fcitx-qt4 fcitx-qt5 fcitx-gtk2 fcitx-gtk3
#若输入法中文乱码
将搜狗输入法调整至输入法序列第二位
```



```bash
# 手动安装oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc            
# ----------------------------------------------------------------

# 一些软件
sudo pacman -S google-chrome            #配合google-access-helper完美解决无法访问某不存在网站，需要可发邮箱
sudo pacman -S visual-studio-code-bin 	# vscode
yay -S typora 			        # markdown编辑利器
yay -S deepin-wine-tim			# Tim


#----upd：2020/4/28--
#----2020/4/28版本的TIM无法输入中文解决：
#编辑 /opt/deepinwine/apps/Deepin-TIM/下的  run.sh文件
#加入：
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx" 
export XMODIFIERS="@im=fcitx"

```

### 六、参考

[Manjaro-User-Guide](https://mirrors.tuna.tsinghua.edu.cn/osdn/storage/g/m/ma/manjaro/Manjaro-User-Guide.pdf)