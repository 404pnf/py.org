# 删除一个feature后 该feature定义的内容类型无法删除了 解决办法是这样的


在drupal 7中，进入数据库的node_type表，找到你要删除的内容类型，修改以下字段为

	module = 'node', custom = 1, modified = 1,

你可以看一下该表结构的描述信息，就知道是什么意思了。这样，在drupal后台就会出现删除该内容类型的链接了。

当然，如果已经发表了一些该内容类型的文章，请先删除他们。

下面的方法我参考了一下，但我不清楚它为什么要去弄node表。也许下面的方法是适合drupal 6的。

16 -- Wednesday, April 13, 2011 - 14:29 : nedjo

http://drupal.org/node/1055460#comment-4343708

To manually delete a content type that was created by a feature:



# Disable the feature. I've sometimes run into problems with this--a
feature won't disable. In this case, remove the feature module code.
# Determine the machine name of the content type to be deleted, e.g.,
'mytype'. In the site database, revert the node_type table values to the
defaults as if the content type were created manually through the UI:
mysql> UPDATE node_type SET module = 'node', custom = 1, modified = 1,
locked = 0 WHERE type = 'mytype';
# Clear caches to ensure the content type change is available.
• Through the UI at admin/structure/types, delete the content type.




2011-09-27