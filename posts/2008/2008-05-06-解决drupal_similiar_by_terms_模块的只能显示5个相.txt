# 解决drupal similiar by terms 模块的只能显示5个相关文章题目的问题

## 解决drupal similiar by terms 模块的只能显示5个相关文章题目的问题


这个模块有个设置让你指定显示几个相关文章，默认是5个。但我和其他很多人一样，发现自己填多少都是只显示5个。


现在看来是drupal 5的这个模块代码有问题。

> The maximum number of similar items to display stuck at 5
> http://drupal.org/node/151084
> 
> Description
> 
> Changing the number of items to display doesn't seem to take effect.
> 
> Looking at the code, it appears that $count is hardcoded at 5 -- changing it solves the issue, but it's a dirty hack.

下面有人给了修改好了的代码：http://drupal.org/node/151084#comment-759974 用补丁的包覆盖以前的文件就好了。

也可以直接去修改代码，硬性修改成你要的条数。

注意：这都是说drupal 5的版本。

看来常读读drupal.org上面我用的模块的issue queue还是很有用的。：）



2008-05-06