---
title: "c/c++结构体总结"
date: 2020-01-29T23:11:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12241806.html)

## 一、c中结构体定义方式：

**1**
```
struct Stu{
    char name[10];
    int age;
    //...
};
struct Stu student; //OK 创建了一个Stu类型的变量student
Stu student1 //error 未定义标识符
```
---
**2**
```
typedef struct Stu{
    char name[10];
    int age;
    //...
}St; //此处的S为结构体变量名Stu的别名
struct St student; //OK 定义了St类型的结构体变量student
St student1; //OK 定义了St类型的结构体变量student1
```
---
**3**
```
struct Stu{
    char name[10];
    int age;
    //...
}stu_a, stu_b; //stu_a, stu_b都是Stu结构体类型的变量

//此外亦可再定义：
struct Stu stu_c; //OK 定义了Stu类型的结构体变量stu_c
```
---
**4** 定义指针型结构体
```
//单链表1
struct LNode{
    int val;
    LNode *next;
    //...
};
typedef LNode *LinkList ;

//单链表2
typedef struct LNode{
    int val;
    LNode *next;
    //...
}LNode, *LinkList;

```
---
**5**
```
struct{
    char name[10];
    int age;
    //...
}stu_a, stu_b; //stu_a,stu_b都是匿名结构体变量，即：
stu_a.name="stuname"; //OK
stu_b.age=18;         //OK
//但无法在其它地方定义这样的结构体变量，因为该结构体为匿名结构体，无法得知其标识符
```
---
**6**
```
typedef struct{
    char name[10];
    int age;
    //...
}Stu_a, Stu_b;
//此处的stu_a,stu_b皆为该结构体的别名，而非变量明
//即：
Stu_a student1; Stu_b student2; //OK
```
<font color=red>这样定义的结构体无法嵌套，即内部无法包含自身</font>
## 二、c++
以上都适用于c++，不过在c++中更加方便：
```
struct Stu{
    char name[10];
    int age;
    //...
};
Stu student_a; //OK, 定义了一个Stu类型的结构体变量student_a
```