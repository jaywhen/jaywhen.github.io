---
title: "Java 笔记"
date: 2020-10-11T23:11:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/14264906.html)

## 运算符优先级

```java
a+=b+=c;
// 等价于
a+=(b+=c);
```



## ||、&& 与 |、&

短路求值：第一个操作数已经能够确定表达式的值，则不用计算第二个操作数的值。

||、&&使用短路求值法。

满足短路的条件：

```
exp1 && exp2 // 当exp1为假时
exp1 || exp2 // 当exp1为真时
```

|、& 不使用短路的方式来求值，即两个操作数都会计算



## Java 存储区

- 栈：基本数据类型的**数据**以及对象的**引用**，对象本身不在栈中，而在堆中（使用 new 创建的对象）或者常量池中
- 堆：存放所有使用 new 创建的对象
- 寄存器：最快的存储区，在程序中无法直接控制。



## String 的不可变性

- exp 1

  ```java
    String s1 = "jaywhen";
    s1 = "code";
    System.out.println(s1); // code
  ```

  看似 s1 的值改变了，然而事实却是：
![string-1](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgJava-string.png)



  也就是说，s1 所引用的对象并没有改变，只是 s1 引用了一个新的对象。

- exp 2

  ```java
  String s1 = "jaywhen";
  String s2 = s1;
  System.out.println(s1 == s2); // true
  s2 = "code";
  System.out.println(s1 == s2); // false
  System.out.println("s1 is " + s1 + " s2 is " + s2); // s1 is jaywhen s2 is code
  ```

![string-2](https://cdn.jsdelivr.net/gh/jaywhen/imageBed/imgJava-string-one.png)