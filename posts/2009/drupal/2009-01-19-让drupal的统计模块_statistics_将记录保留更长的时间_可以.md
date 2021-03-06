# 让drupal的统计模块 statistics 将记录保留更长的时间 可以设置为永久保留

## 需要解决的问题
durpal代码让你保留统计信息，比如最近点击、访问来源等信息，最长保留时间是16周。我想让它保留更长时间的信息。搜索了一下，决定直接改代码。


## 方法

因为我使用drupal 6。以下修改都是针对drupal 6的代码。

需要修改的文件是 modules/statistics/statistics.admin.inc

编辑该文件，查找 3600 这个关键词，会看到这行

> '#description' => t('Log each page access. Required for referrer statistics\
> .'));
>   $period = drupal_map_assoc(array(3600, 10800, 21600, 32400, 43200, 86400, 172\
> 800, 259200, 604800, 1209600, 2419200, 4838400, 9676800,3600000000), 'format_in\
> terval')
> ;

其中 $period 后面是默认的保存时间，以秒来计算。诉一3600就是一个小时。10800是一天。你要保留多少天直接用 天数 x 24 x 3600 就是添上去的秒数。

我图省事。直接加了 3600000000 ，就是1000000个一小时。：）

修改好了，保存。

回到管理页面。 /admin/reports/settings

在“Discard access logs older than:”中现在可以选择的时间断中赫然出现 114 years 这个选项。原来1000000个小时就是114年啊。足够长了。：）

可惜114年太长。drupal不同意。最后我删除了2个零。改为1年零7周。

参考文章：
<http://api.drupal.org/api/function/statistics_access_logging_settings/6>
需要修改的代码片段就在上面链接页面中。

解释statistics模块是干嘛的。<http://drupal.org/node/297>

我为了解决这个问题进行的[关键词搜索](http://www.google.cn/search?q=Access+log+settings+code+site%3Adrupal.org)

## 修改显示参数，让每页显示超过30条信息
我只想每页多显示些referrers条目，比如显示200条


第一步：让每次查询数据库的时候多查一些，而不是默认的30条

还是在 modules/statistics/statistics.admin.inc 搜索一下 

      $result = pager_query($sql, 30);

之类的看看。修改30为400，就是每次查询400条。

第二步：修改输出查询条目的参数

参考源代码： <http://api.drupal.org/api/function/statistics_top_referrers>。这是修改referrer的，修改hits和top pages, top visits一样道理。

最简单的方法，就是搜索关键词“30”，看到默认output是30，直接改为100就好了或任何你想要的数字就好了。


## 注意

按我的方法直接改动核心代码的好处是方便。增加几个字符，就好了。

坏处是下次升级的时候，你还要记得修改相同的地方，不然你的修改就被覆盖了。所有，有些麻烦。


2009-01-19