---
title: "加密算法"
date: 2020-11-22T23:22:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/14022265.html)

## 加密

密码学中，**加密**（Encryption）是指将明文信息改变为难以读取的密文内容使之不可读的过程。只有拥有解密方法的对象，经由解密过程，才能将密文还原为正常可读的内容。

由此来说，散列（Hash）函数如 `MD` 家族、`SHA` 家族之类都不能算是**加密算法**，因为通过散列函数所计算出来的散列值不可逆。




## 加密算法分类

- 对称加密算法（Symmetric-key algorithm）

  在加密解密时使用相同的密钥，常见的有：

  - AES
  - DES
  - 3DES

- 非对称加密（Asymmetric algorithm）

  需要两个密钥对，一个是公开密钥（公钥），一个是私有密钥（私钥）；公钥用来加密，私钥用来解密。使用公钥加密得到的密文只能通过相对应的私钥才能解密得到原来的明文，常见的有：

  - RSA（由发明者Rivest、Shmir、Adleman姓氏首字母缩写而来）

## 参考

> - [散列函数](https://zh.wikipedia.org/wiki/%E6%95%A3%E5%88%97%E5%87%BD%E6%95%B8)
> - [公开密钥加密](https://zh.wikipedia.org/wiki/%E5%85%AC%E5%BC%80%E5%AF%86%E9%92%A5%E5%8A%A0%E5%AF%86)
> - [对称密钥加密](https://zh.wikipedia.org/wiki/%E5%B0%8D%E7%A8%B1%E5%AF%86%E9%91%B0%E5%8A%A0%E5%AF%86)