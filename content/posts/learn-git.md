---
title: "[GIT] Git学习笔记"
date: 2020-02-20T14:06:07+08:00
draft: false
---
> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12335483.html)

### GitHub上修改了仓库名后本地需要做的调整
![imglearn-git](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imglearn-git.jpg)
当我在GitHub上修改了一个仓库的名字后，此时再在本地与之对应的仓库```git push```时，就会报错

+ 首先查看本地仓库对应的远程库名
```git remote -v```
此时显示出修改前的仓库名
+ 修改连接
```git remote set-url origin xxxxx.git```
其中xxxx.git为修改后的仓库的url
+ 此时再次git push可能会报错
```Logon failed, use ctrl+c to cancel basic credential prompt.```
并且两次提示输入用户名以及密码

<font color=red>注意：</font>
>第一次输入的为GitHub的登录名以及登录密码
>而第二次输入的应该是<font color=red>Personal access token</font>

+ Personal access token相关设置以及密码的获取
此时首先设置一下Personal access token
```Settings->Developer settings->Personal access tokens->Generate new token```

>在Note栏填一个名字用于第二次登录的用户名
并且勾选给与这个用户名的权限（我全勾了）
完成后将会给一长串密码（用于第二次登录），<font color=red>记下来，因为它只弹出这一次</font>

+ 完成
>此时回到git bash然后```git push```
第一次输入登录名以及密码，第二次输入上一步骤所得的用户名以及密码后就会```push```成功了


### 撤销git add .
```
git reset .
```


### error：failed to push some refs to xxxxxxx
![learn-git-1](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imglearn-git-1.jpg)


原因：
`本地仓库与hub上的内容不一致`

解决：
```
#合并
git pull origin master
#push
git push -u origin master
```


### 配置Git默认编辑器
Linux下：
方法一、

找到.gitconfig文件，在里面编写：
```
[core]
editor =vim  //how to vscode?
```
方法二、

命令行
```
git config –global core.editor vim 
```
### error
```bash
error: src refspec master does not match any. error: failed to push some refs to
```
可能的原因：
由于漂亮国的 `black lives matter` 运动, GitHub 把主分支 `master` 改为了 `main`, 所以若是在GitHub上新建了一个远程仓库，在本地上传代码时，应该加一句:
```bash
git branch -M main
```


[参考链接](https://www.cnblogs.com/tolingsoft/p/12060864.html)