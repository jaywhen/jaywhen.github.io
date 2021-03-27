---
title: "flask 学习记录(一)"
date: 2020-08-24T20:17:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/13556069.html)

> 暑期学习flask的学习记录，个人回顾复习用
# flask 学习记录

## 库
> - Pipenv（管理虚拟环境与包）：
>   会生成`Pipfile`与`Pipfile.lock`两个文件，当使用`pipenv`来 删除/安装/更新包时，两个文件会自动更新
>
>   Pipfile: 记录项目依赖包列表
>
>   Pipfile.lock: 记录固定版本详细依赖包列表
>
>   ```bash
>   # 换源
>   in Pipfile：
>   url = "https://pypi.doubanio.com/simple/"
>   ```
>
> 
>
> - python-dotenv:
>
>   辅以 `.env`与`.flaskenv`两个文件来管理开发相关的环境变量
>
>   .env: 存储敏感信息，如`SMTP`服务器登录密码等
>
>   .flaskenv: 存储公共环境变量
>
> - watchdog:
>
>   监测文件变动，安装好后会`Werkzeug`会自动用它来检测文件变动
>
>   ```bash
>   # 因为只有在开发时才会用到，所以将包声明为开发依赖
>   pipenv install watchdog --dev
>   ```