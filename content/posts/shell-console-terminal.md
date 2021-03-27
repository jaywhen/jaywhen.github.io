---
title: "What the difference of terminal console and shell"
date: 2020-12-17T00:19:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/14147536.html)

- Terminal

  Terminal——终端。终端其实就是一种输入输出设备，相对于计算机主机而言属于外设，本身并不提供运算处理功能。早期的终端一般是指TTY（teletypewriter），即电传打字电报机，如图：
![teletypewriter](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgterminal.jpg)


  输入时，你会看到文字出现在一张纸上，并且输入的文字被传入目标计算机。当该计算机响应时，你将看到打字机自动地将输出打印在同样的纸上。

  后来在软件意义上的 `terminal` ，也就是类似于 `Windows terminal` 这样的软件，用于显示文本输出、接收输入并传给 `shell` 也就是说它并不会处理输入
![terminal](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgpowershell.png)

- Console

  `Console ` 20世纪中期，`Console` 便是指的如下图所示的东西：
![console](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgconsole.png)

即带有显示器与键盘的物件儿，可以认为这是一个更为现代化的 `terminal` ，这么一来，`Console` 可以说是一台设备，而 `terminal` 是运行在 `Console` 这台设备中的一个软件。某种程度上来说，`Console` 与 `terminal` 具有相同意义。



- Shell

  `Shell` 是一个命令行解释器，是 `Linux` 的外壳，当用户在 `terminal` 上输入命令时，`Shell` 负责将这些命令经过处理后传给内核，内核执行完命令后将结果通过 `Shell` 返回给 `terminal` 。当打开一个 `terminal` 时，操作系统会将 `terminal` 与 `Shell` 关联起来。

  一台 `Linux OS` 的机器上可以有很多 `Shell` ，可以是使用如下命令查看：

  ```shell
  cat /etc/shells
  ```

  据我的经验来看，一般默认的 `Shell` 是 `sh` (Bourne shell) 与 `bash` (Bourne again shell)

  另外用得比较多的 `Shell` 有:

  - `Zsh` (macOS的默认设立了已从Bash改为Zsh)

    `Zsh` 的初代 是由 保罗·弗斯塔德于1990年在普林斯顿大学求学时编写的。名称 `zsh` 源于耶鲁大学教授邵中(后转为普林斯顿大学教授)——保罗将教授的用户名 "zsh" 作为 `Shell` 的名称。

  - `fish` (friendly interactive shell)