---
title: "WPF .NET CORE Process.Start(url)"
date: 2020-11-23T21:33:07+08:00
draft: false
---

> 这是我之前在博客园写的文章，现在搬运过来，[博客园文章地址](https://www.cnblogs.com/Jaywhen-xiang/p/14027243.html)

> 在WPF .NET Core中使用以下代码打开浏览器进入网页将会报错，而在WPF .NET Framework中却不会

```c#
public void OpenWebLink(string url)
{
    try
    {
        Process.Start(url);
    }
    catch (Exception e)
    {
        //Some exception handling code
        // ...
    }
    
}
```

---

将上述代码改为：

```
public void OpenWebLink(string url)
{
    try
    {
    	var psi = new ProcessStartInfo
	{
    	    FileName = url,
    	    UseShellExecute = true
	};
	Process.Start(psi);
    }
    catch (Exception e)
    {
        //Some exception handling code
        // ...
    }
    
}
```

则不会有异常，因为 `UseShellExecute` 属性在.NET Core中默认为 `false`，要打开一个网页链接应该将其设为 `true`，因为url并不是一个可执行文件。



参考：[.Net Core 3.1 Process.Start(“www.website.com”) not working in WPF](https://stackoverflow.com/questions/59716856/net-core-3-1-process-startwww-website-com-not-working-in-wpf)