# 用drupal建立一个有wiki内容的站点


用drupal建立一个有wiki内容的站点
<!--tableofcontents-->

## 例子
这个站点就是做为例子给大家用的
http://test.tschannen.net/

## 方法
drupal core
http://drupal.org/project/diff
http://drupal.org/project/recent_changes

就可以了 drupal core是5.0以后的都有cck，和还有view。最后建立一个专门的content-type，叫wiki之类，让那个type的文章自动创建修订版本。

完工。

如果你想要留言页面像wikipedia那样显示，就再用个模块叫talk
http://drupal.org/project/talk

其它你常用的模块和功能都能继续使用。


## 好处

1. 可以单独建立一个wiki内容的content-type，让大家编辑。
2. drupal原有的比如blog, forum等功能全部保存
3. drupal原有的catergory，tag等都能用
4. 简单说，drupal所有其他模块都可以使用
5. 简洁url（clean-url）,path等比传统wiki的用页面的标题做url好。这是我个人看法。
6. 编辑语法可以用php markdown

所以，与其把一个wiki变成一个各种功能的内容管理系统，还不如在drupal这个内容管理系统/内容管理平台中加入一个wiki的功能。

我觉得durpal的clean url，一般是 /node/2 这种类型 比 /w3m的手册 这种要好。如果不喜欢纯阿拉伯数字，在重点页面，可以用path改为 /w3m 。带中文的url因为都应该是utf8编码的，所以，在有的浏览器中的地址栏显示是乱码，复制到email中发个别人也很有可能无法正常显示中文。另外，如果wiki用页面的题目做url，那么对页面题目的命名就要有特别规范，wikipedia上关于页面命名就有很多要求。这是必要的，否则，页面题目不符合文章，或者需要修改，整个文章的地址都变了。在的drupal中就不会有这个麻烦。自动给你一个数字编码的url，如果你想用更能表达文章意思的，在path修改。如果你**就想让文章题目自动成为url**，转个path_auto就可以了。当然path_auto功能不只这一个。这样，该篇文章题目随便改。

## 坏处

我觉得唯一不足就是在文章编辑和版本控制的能力以及方变成度上比不上ikiwiki这种能用专门版本控制工具管理文章数据的软件。

除了，ikiwiki，其它都和drupal差不多，都比较麻烦！


## 其他用法

即使你不打算搞一个所有人都能编辑的项目。那么在你个人blog或者公司网站启用这个功能也很好。你可以追踪自己的修改历史。对于一个公司网站，有时会有多个人修改同一文章，如果某人改的不好，没有版本控制怎么恢复到前一个版本。另外，很多情况下大家想看一下其它人都做了什么修改，好决定自己还用不用改了，或者别人改的正确与否。不管是员工，还是领导，特别是领导，都会喜欢版本控制的功能的。

## 后记
talk使用方法
启用talk moduel，在内容类型中，选中某一个类型，让它用talk
在admin-site configuration-talk page再做个设定 http://example.org/?q=admin/settings/talk

recent change还没有port到6.0 :(

2008-08-07