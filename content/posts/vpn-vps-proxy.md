---
title: "VPN、Proxy"
date: 2021-04-03T00:19:07+08:00
draft: false
---

## 网络封锁的手段

GFW 实现网网络封锁的手段主要有两种：DNS 劫持和 IP 封锁（此外还有 DNS 污染和关键词过滤等）

- DNS 劫持：GFW 劫持用户向 twitter 以及其它被墙的网站的请求，并返还给用户一个虚假 IP。早期 GFW 的手段便是 DNS 劫持，那时的用户可以通过修改 Hosts 文件的方式突破封锁。
- IP 封锁：用户发往被封锁 IP 的任何数据都被 GFW 阶段。解决的办法是在未被封锁的国家假设第三方服务器，中转与目标服务器的往来流量。

## VPN

VPN（Virtual Private Network）虚拟专用网络。VPN 是一种加密技术，被设计出来的目的是数据安全传输以及网络匿名。VPN 出现远早于 GFW，即它并非是为了翻墙而生，但现今，在国内， VPN 已然成为翻墙的代名词。

## Proxy

### 反向代理

翻墙所用的代理都是正向代理，而反向代理各位了解过 Nginx 的都知道，这里就不过多讨论了。

### 正向代理

正向代理主要有 HTTP、HTTP over TLS(HTTPS)、Socks、Socks over TLS几种。其中，HTTP 和 Socks 无法用于翻墙，HTTPS 和 Socks over TLS 可以用于翻墙。不过，Socks over TLS几乎没人用。

Proxy 的历史同样早于 GFW，它最早被设计出来的目的当然也不是翻墙。正向代理最主要的目的和 vpn 差不多，都是用于匿名，但 HTTP 和 Socks 不能加密，只能匿名，HTTPS 既可以匿名，也可以用于加密通信。

从理论上讲，四种代理协议都可以通过“用户先将数据发给代理服务器，再由代理服务器转发给目的服务器”的方法达到翻墙目的。但由于HTTP和Socks都是明文协议，GFW可以通过检查数据包内的内容得知用户的真实意图，进而拦截数据包。所以，HTTP和Socks一般只用作本地代理。而HTTPS协议是加密通讯，GFW无法得知数据包内的真实内容，类似于关键词过滤的手段无法施展。

不仅如此，HTTPS代理的流量特征和我们平时访问网站时所产生的HTTPS流量几乎一模一样，GFW无法分辨，稳定性爆表。

理论上讲，HTTPS代理无论是安全性，还是在隐匿性，都要比目前最为流行的shadowsocks好。事实上，在所有已知的翻墙协议中，无论是vpn协议，还是代理协议，它应该都是最好的。v2ray的vmess over tls也许能和HTTPS代理媲美。

当然，HTTPS代理也有它的缺点，其中最大的缺点就是配置复杂。即便能用默认参数就用默认参数，用户自己只作最低限度的配置，对新手而言，这也是一个无比痛苦的过程。更别说，想要正常使用HTTPS代理，你还要购买域名和证书这些，非常麻烦。所以，即便是在shadowsocks出现之前，HTTPS代理也没能在大陆流行起来。



## 参考

[浅谈vpn、vps、Proxy以及shadowsocks之间的联系和区别](https://medium.com/@thomas_summon/%E6%B5%85%E8%B0%88vpn-vps-proxy%E4%BB%A5%E5%8F%8Ashadowsocks%E4%B9%8B%E9%97%B4%E7%9A%84%E8%81%94%E7%B3%BB%E5%92%8C%E5%8C%BA%E5%88%AB-b0198f92db1b)

