# google搜索结果中出现的咱们站点奇怪的url

找这个问题很久了
发现有些明显错误的url被访问n多次
我反复在找数据库中查找这些url字段，大部分根本没有
今天偶然发现怎么回事了
在这个[评论中](http://pengyou.rijiben.org/node/545#comment-626)我写了一个连接

> 也能[g到你](http://www.google.com/search?q=lvcha+rijiben)不过是你的相册。看来你文字写得还不够认真和勤奋；）

点那个google搜索页面大部分结果就是我经常在log中看见的错误url。google给出的链接都是错的，比如这些：

> pengyou.rijiben.org/node/www.flickr.com/photos/(http:/pengyou.rijiben.org/node/824?page=33 
> pengyou.rijiben.org/.../www.ied.edu.hk/creative/sharing/ideas/eng02/en.wikipedia.org/wiki/Nerdcore?page=41

我成天在日志中看到有人访问这些根本不存在的url。看看[这些url](http://www.google.com/search?q=lvcha+rijiben&hl=zh-CN&lr=&newwindow=1&filter=0)，都是错的

非常奇怪的是，只是在搜索lvcha+rijiben的时候才出现这种情况。难道很多人都搜这个关键词组合，还是因为每次google爬咱们站点的时候找到了我的那个搜索lvcha+rijiben的链接然后顺着爬到gogole自己的搜索页面然后接着爬那页的链接。如此反复，怎么让它挺下啊～！！！

lvcha，都是你！！！

怎么回事？你负责解决吧。：）

我能想到的解决方法是去掉我留言中的那个链接，这样google下次就不会爬到，也很少有人会去搜lvcha+rijiben。慢慢就可能好了。不过也不知道行不行。况且我想槁明白到底是怎么回事。

2007-05-09