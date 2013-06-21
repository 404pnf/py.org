# drupal运行在nginx下时候301 loop问题的解决方法

用nginx反响代理给apache来跑drupal。每个站点的首页都显示正常，其它任何页面，静态文件没有问题，但页面不行，出 301 redirect permanant 过多一直到浏览器报错和白屏。

我用的nginx配置文件时omega8cc的，不可能有错误。而且同样的配置，如果proxy给后台的fastcgi就不出这个问题。

所以我开始猜测是apache那边trailing slash设置问题，也不断地修改nginx的conf。但都不行。再排除boost。

今天突然想到了global redirect，发现如果停了global redirect就一起正常。但我不想停那个模块。看它的代码，开始想关掉deslasing这个功能，不行，最后找到问题在 Non-clean to Clean:  这个开关，关了就好了

>Non-clean to Clean:
>关闭
>进行中
>If enabled, this option will redirect from non-clean to clean URL (if Clean URL's are enabled). This will stop, for example, node 1 existing on both example.com/node/1 AND example.com?q=node/1.

关了之后，不好的地方，就是任何页面都可以通过 ?q=node/2 和 node/2 来访问，产生了duplicate content。无所谓啦。跑起来就好了。 ：） 

2010-08-20