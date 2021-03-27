---
title: "python: lambda与sorted函数"
date: 2020-08-29 00:34T16:11:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/13580455.html)

## lambda表达式

python中形如：

```python
lambda parameters: expression
```

称为`lambda`表达式，用于创建匿名函数，该表达式会产生一个函数对象。

该对象的行为类似于用以下方式定义的函数：

```python
def <lambda>(parameters):
	return expression
```

> python中的`lambda`函数可以接受任意数量的参数，但只能有**一个**表达式。也就是说，`lambda`表达式适用于表示内部仅包含1行表达式的函数。那么`lambda`表达式的优势就很明显了：
>
> - 使用`lambda`表达式可以省去单行函数的定义过程，使代码更加简洁；
> - 适用于不需要多次复用的函数

例：

```python
y = lambda x: x*x
print(y(3))
> 9
```

```python
fx = lambda x, y, z: x+y+z
print(fx(3, 4, 5))
> 12
```

---

## sorted()

**python3.x**中**sorted**函数：

```python
sorted(iterable, *, key=None, reverse=False)
```

`sorted`函数会根据`iterable`中的项返回一个新的已排序**列表**。

其中`key`与`reverse`是两个可选参数，它们都必须指定为关键字参数；

**key**：指定带有单个参数的函数，用于从`iterable`的每个元素中提取用于比较的键，默认为`None`，即直接比较元素；

**reverse**：为一个布尔值，用来指定排序规则，默认为`False`（升序）。

python2的sorted函数中还有一个参数cmp，python3的sorted中已经没有这个参数了。

> 与**list.sort()**方法不同的是，**sorted()**是有返回值的，而**list.sort()**的返回值为None；并且**list.sort()**只能对list进行排序，而**sorted()**可以接收任何的iterable

例：

```python
# list
foo = [5, 7, 2, 9, 1]
bzz = sorted(foo)
print(bzz)
# > [1, 2, 5, 7, 9]

print(sorted(foo))
# > [1, 2, 5, 7, 9]

print(sorted(foo, reverse = True))
# > [9, 7, 5, 2, 1]

print(sorted(foo, key = lambda x: x*-1))
# > [9, 7, 5, 2, 1]

# dict
bar = {'java': 14, 'c': 16, 'python': 9, 'cpp': 6, 'csharp': 4}
print(sorted(bar))
# > ['c', 'cpp', 'csharp', 'java', 'python']

print(sorted(bar.items(), key = lambda kv: kv[1], reverse = True))
# > [('c', 16), ('java', 14), ('python', 9), ('cpp', 6), ('csharp', 4)]
```