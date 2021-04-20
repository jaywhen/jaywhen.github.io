---
title: "Gtihub 分支管理"
date: 2020-12-24T09:12:07+08:00
draft: false
---

## 新建远程仓库，将本地仓库进行初始化

```bash
git init
```

![](https://i.loli.net/2021/04/20/T3scod6OwqANuR2.png)

## 新建分支

```bash
# 新建并切换到分支名为 “branch-1” 的分支
git checkout -b branch-1

# 将当前分支下所有文件提交到暂存区
git add .

# 把暂存区的所有修改提交到分支，并附上本次修改简述
git commit -m "first commit"

# 将远程仓库的默认分支改为刚才新建的 branch-1 分支
# 这一步在新建远程仓库时才需要做
git branch -M branch-1

# 将本地仓库与远程仓库关联起来
git remote add origin git@github.com:jaywhen/branch.git

# 将本地提交的修改推送到远程
git push -u origin branch-1
```

![img-2](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imggit-man-Untitled%201.png)

## 添加分支

### 远程新建一个 branch-2 分支

![img-3](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%202.png)

### 本地创建分支

通过命令

```bash
git branch
```

可以查看本地当前所具有的分支，以及当前所在的分支，下图说明当前本地只有一个 `branch-1`

分支，并且已处于 `branch-1` 分支。

![img-4](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%203.png)

通过命令：

```bash
git branch branch-2
git checkout branch-2

# 上面两条语句等同于
git checkout -b branch-2
```

创建并切换到 `branch-2` 分支:

![img-5](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%204.png)

新建分支会将已有分支的文件夹中的内容一同复制到新分支中，此时由于我们已经切换到新分支中了，若想清空新分支，可以直接删除新分支文件夹中的内容（注意不要删 .git 隐藏文件夹）：

![img-6](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%205.png)

![img-7](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%206.png)

此时新分支已为空，可以将新分支推送到远程看看

```bash
git add .
git commit -m "clear branch-2"
git push origin branch-2
```

![img-8](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%207.png)

### 往新分支中添加文件(文件夹)

![img-9](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%208.png)

将要添加的文件(文件夹)复制到新分支(确保当前位于你想推送的分支，可以使用 `git branch` 查看当前位于哪个分支) 

![img-10](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%209.png)

```bash
git add .
git commit -m "add dir & files"
git push origin branch-2
```

### 切换分支

切换不同的分支本地会呈现不同的内容

```bash
# 查看当前分支
git branch

# 切换到对应分支
git checkout branch-1
```

![img-11](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%2010.png)

### 删除分支（以删除 `branch-1` 分支为例）

```bash
# 删除本地的 branch-1 分支
git branch -d branch-1

```

删除本地分支后，若远程默认分支为将要删除的分支，应该将远程的默认分支切换到其它分支：

![img-12](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%2011.png)

![img-13](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%2012.png)

可以看到当前远程默认分支为待删除的 `branch-1`  分支，于是将远程的默认分支切换到其它分支，并点击 `Update`

![img-14](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%2013.png)

删除远程分支：

```bash
git push origin --delete branch-1
```

由于之前已经在本地删除了`branch-1`  但远程对应的`branch-1`  分支并未删除，若远程默认分支为待删除的分支，直接运行下图的命令将会报错，因为默认分支不能删除，所以才多了如上的切换分支的步骤；若带删除的分支不是默认分支，那么可以直接运行下图的语句。此时已经将默认分支切换为其它分支，可以放心删除：

![img-iner](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%2014.png)

![img-15](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgUntitled%2015.png)

可以看到远程与本地的 `branch-1`  都已经删除