# 关于robots txt的问题

我准备用robots告诉一下搜索引擎什么不要索引。我用下面这个，自己加了几行，主要是不要索引 files/ 目录 不要索引 files/mp3 文件 不要索引 /blog/ 路径 不要索引 /taxonomy/ 路径 不要索引 /node?page 路径，这个后面没有/，因为它是 node?page=2 这种格式，我不知道自己写得对不。

[drupal] Log of /drupal/robots.txt
http://cvs.drupal.org/viewcvs/drupal/drupal/robots.txt

有很多错误不知道怎么改
Robots.txt Syntax Checking
http://www.dcs.ed.ac.uk/cgi/sxw/parserobots.pl?site=pengyou.rijiben.org

那么就是说drupal官方cvs提供的robots.txt有很多错误。？！update：是我加空行产生的错误。robots.txt里面别有空行。看我评论。

请大家帮助。

The Web Robots Pages
http://www.robotstxt.org/wc/robots.html


2007-01-17
