---
title: "关于JavaScript"
date: 2020-03-30T09:12:07+08:00
draft: false
---

> 从21年年初起，我写了很多 JavaScript 的代码，在这之前我只写过一些简单的 JavaScript 代码，阮老师的《ES6 教程》我也只是大概翻了一遍，果然还是得实践出真知

## JavaScript Array.prototype.map()

`map()` 方法创建一个新数组，其结果是该数组中的每个元素是调用一次提供的函数后的返回值。

```javascript
const array1 = [1, 4, 9, 16];

// pass a function to map
const map1 = array1.map(x => x * 2);

console.log(map1);
// expected output: Array [2, 8, 18, 32]
```

语法：

```javascript
var new_array = arr.map(function callback(currentValue[, index[, array]]) {
 // Return element for new_array 
}[, thisArg])
```

参数：

```
callback
```

生成新数组元素的函数，使用三个参数：

- `currentValue`

  `callback` 数组中正在处理的当前元素。

- `index`可选

  `callback` 数组中正在处理的当前元素的索引。

- `array`可选

  `map` 方法调用的数组。

`thisArg`可选

执行 `callback` 函数时值被用作`this`。

## JavaScript '（单引号） 与 “（双引号）

在定义字符串字面量时，用单双引号包裹字符串几乎没有什么区别，根据个人喜好来使用。不过 `Airbnb `  JavaScript 风格指南中建议使用单引号来定义字符串：

```javascript
// bad
const name = "Capt. Janeway";

// bad - 模板字符串应该包含插入文字或换行
const name = `Capt. Janeway`;

// good
const name = 'Capt. Janeway';
```

### JavaScript 模板字符串

ES6 引入了模板字符

模板字符串（template string）是增强版的字符串，用反引号（`）标识。它可以当作普通字符串使用，也可以用来定义多行字符串，或者在字符串中嵌入变量。

```javascript
// 普通字符串
`In JavaScript '\n' is a line-feed.`

// 多行字符串
`In JavaScript this is
 not legal.`

console.log(`string text line 1
string text line 2`);

// 字符串中嵌入变量
let name = "Bob", time = "today";
`Hello ${name}, how are you ${time}?`
```

使用模板字符串表示多行字符串，所有的**空格**、**缩进**和**换行**都会保留在输出中

