---
title: "Manjaro安装Mysql"
date: 2019-12-27T16:11:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12106517.html)

![manjaro-install-mysql](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgmmm.jpg)

**一、理想情况下**

```
//下载Mysql
pacman -S mysql
//初始化Mysql，记住生成的密码，方便修改
sudo mysqld --initialize --user=mysql --basedir=/usr --datadir=/var/lib/mysql
//设置开机启动
systemctl enable mysqld.service
//启动Mysql
sudo systemctl start mysqld.service
//修改密码
mysql -u root -p
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '新密码';
```
执行以上步骤如果都没遇到问题的话，那么恭喜你成功安装好了Mysql

**二、非理想情况**
不过往往我们会遇到一些问题：
Q1：
```
mysqld --initialize --user=mysql --basedir=/usr --datadir=/var/lib/mysql
mysqld: error while loading shared libraries: libicuuc.so.65: cannot open shared object file: No such file or directory
```
原因：Manjaro系统中最新libicu版本是64.2，而Mysql需要的是65版本。
S1：需下载并编译icu4c-65，并软链接到/usr/lib/目录下
[下载icu4c-65_1-src.zip](https://github.com/unicode-org/icu/releases)

安装并编译步骤：
```
解压icu4c-65_1-src.zip
cd icu/source
./configure
```
Q2：
```
./configure
bash: ./configure：/bin/sh^M：解释器错误: 没有那个文件或目录
```
原因：该脚本在Windows下编辑过，在Windows下，每行结尾为\n\r，而Linux下为\n
S2：
```
我们将\r删掉就好了
sed -i 's/\r$//' configure
//注意，后续可能在编译其他文件时还会出现类似问题，如：
checking for ICU version numbers... release 65.1, library 65.1, unicode version 12.1
configure: error: cannot run /bin/sh ./config.sub

checking for ICU version numbers... release 65.1, library 65.1, unicode version 12.1
checking build system type... ./config.guess: line 4: $'\r': command not found
同样的，我们对这些文件依次执行
sed -i 's/\r$//' "file_name"
即可
```
[参考博客1](https://wangwr.com/archives/manjaro-install-mysql8.html)
[参考博客2](https://blog.csdn.net/AQ931752921/article/details/89308905#_24)
[参考博客3](https://blog.csdn.net/weixin_39730950/article/details/89445343)