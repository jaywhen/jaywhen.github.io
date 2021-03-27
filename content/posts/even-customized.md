---
title: "Hugo：even主题客制化后的构建"
date: 2020-05-05T00:17:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/12829058.html)



> 在旧版本的`even`中，客制化后需要在目录下使用`yarn`来构建才能生效。而在新版本中，`even`团队放弃了使用`webpack`转而使用用户相对友好的`Hugo Pipes`来处理资源文件，相应的，在新版本中便不需要使用`yarn`来构建了。
>
> 不过在新版本中，要客制化主题使其能够生效，需要
>
> * 下载[hugo_extended](https://github.com/gohugoio/hugo/releases)
>
> 否则将不会发生任何改变。
>
> 
>
> 例如我想要将`even`原本默认的`Mint Green`修改为`Cobalt Blue`，只需修改
>
> `\themes\even\assets\sass`路径下的`_variables.scss`文件，然后再在网页主目录下使用`hugo`命令即可构建成功



参考：

[Why build section is removed from Readme? ](https://github.com/olOwOlo/hugo-theme-even/issues/237)



[chore(build): drop webpack and use Hugo Pipes](https://github.com/olOwOlo/hugo-theme-even/pull/130)



[I get "TOCSS ... this feature is not available in your current Hugo version"](https://github.com/gohugoio/hugoDocs/blob/master/content/en/troubleshooting/faq.md#i-get-tocss--this-feature-is-not-available-in-your-current-hugo-version)