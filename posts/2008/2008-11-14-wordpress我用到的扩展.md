# wordpress我用到的扩展



为朋友装和管理一个wordpress的站点，做校友联系用。
## wordpress中显示作者信息

和author相关的帮助
<http://codex.wordpress.org/Template_Tags#Author_tags>

特别是这个：
<http://codex.wordpress.org/Template_Tags/wp_list_authors>

在index.php中添加上述代码
## wordpress的super cache扩展
> Author: Donncha O Caoimh
> 
> This plugin generates static html files from your dynamic WordPress blog. After a html file is generated your webserver will serve that file instead of processing the comparatively heavier and more expensive WordPress PHP scripts.
> http://wordpress.org/extend/plugins/wp-super-cache/

需要php中safe mode是on。
## wordpress在侧栏显示新留言的扩展get recent comments

> Author: Krischan Jodies
> 
> This plugin shows excerpts of the latest comments and/or trackbacks in your sidebar. You have comprehensive control about their appearance. This ranges from the number of comments, the length of the excerpts up to the html layout. You can let the plugin order the comments by the corresponding post, or simply order them by date. The plugin can (optionally) separate the trackbacks/pingbacks from the comments. It can ignore comments to certain categories, and it offers support for gravatars. It only gives extra work to the database, when actually a new comment arrived. You can filter out unwanted pingbacks, which originate from your own blog. And it is a widget.
> http://wordpress.org/extend/plugins/get-recent-comments/

## openID

http://wordpress.org/extend/plugins/openid/

## wordpress中注释掉sidebar的一些内容需要用html的注释语法

      <!-- 中间这些字是看不到的 -->
如果是多行，我现在的方法就是统一插入<!-- 的前缀
和 -->的后缀

emacs中区块操作。选中区域后，让光标在这些行的第一个字符，之后c-x r t插入<!-- 。

还是选中区域，alt-x replace-regxp，用正则表带替换，把$（代表行结尾的字符）替换为 --> 就可以了





2008-11-14