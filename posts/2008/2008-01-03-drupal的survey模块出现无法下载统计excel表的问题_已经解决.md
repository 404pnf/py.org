# drupal的survey模块出现无法下载统计excel表的问题 已经解决了

## drupal的survey模块出现无法下载统计excel表的问题；已经解决了。

我是drupal 5.x版本。survey用的是2007年6月的版本。


发现有的问卷调查统计无法下载excel表，点下载，出现白屏。搜索了drupal.org发现有类似问题，和我的很相像。用top观测一下点击下载链接时的服务器负载，cpu在100%，并保持一段时间。

简单修改，参考： http://drupal.org/node/154901

我使用第3个留言中的方法 http://drupal.org/node/154901#comment-574428
直接注视掉那几行代码。

第4个留言中的方法似乎是解决这个bug的代码。但是我不懂，所以没用。而且既然comment out掉那段代码就能行了。我就将就一下。等下一个survey稳定办来修复这个问题吧。


2008-01-03