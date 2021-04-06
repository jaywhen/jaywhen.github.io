---
title: "No real problem"
date: 2021-04-04T23:07:21+08:00
draft: false
---
> scheduler.development.js:298 [Deprecation] SharedArrayBuffer will require cross-origin isolation as of M91, around May 2021.
>
> react 版本： 17.0.1

[Dan Abramov](https://github.com/gaearon) 说这是个无关紧要的 message（"But there was no real problem, it's a false positive."），但最终还是在 react 17.0.02 修复了，所以解决的办法就是更新 react  以及 react-dom：

```bash
yarn upgrade react --latest
yarn upgrade react-dom --latest
```

## 参考链接：

- [SharedArrayBuffer will require cross-origin isolation as of M91, around May 2021](https://stackoverflow.com/questions/66489286/sharedarraybuffer-will-require-cross-origin-isolation-as-of-m91-around-may-2021)
- [react-issues-20829](https://github.com/facebook/react/issues/20829)
- [next.js-issues-21708](https://github.com/vercel/next.js/issues/21708)
- [react-pull-20831](https://github.com/facebook/react/pull/20831)