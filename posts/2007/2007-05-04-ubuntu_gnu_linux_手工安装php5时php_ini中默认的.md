# ubuntu gnu linux 手工安装php5时php ini中默认的mysql so模块是注释掉的

在桌面服务器测试drupal备份是否可用。因为看了slashdot的一篇文章一个比较有名的杂志最近服务器完全怀了，备份数据也无法正常恢复。给我提了个醒，不能光备份但不测试。

装drupal时候发现提醒我

> PHP MySQL support not enabled

> We were unable to use the MySQL database because the MySQL extension for PHP is not installed. Check your PHP.ini to see how you can enable it.

> For more help, see the Installation and upgrading handbook. If you are unsure what these terms mean you should probably contact your hosting provider.

我于是

> less /etc/php5/apache2/php.ini |grep mysql

看看php.ini中哪些行提及了mysql

看到
> ;extension=mysql.so

分号 ; 是说这行被注释掉
去掉分号
重新起动apache就好了
> /etc/init.d/apache force-reload

:) 

写在这里提醒自己。

## 暂时恢复备份有问题

这个太可怕了。

是这样，我在生产服务器上另装一个drupal恢复数据没有任何问题。但在我的桌面就计算机上就总不行。能导入数据库，能显示node页面的第一页，其他的都不行。

奇怪。

这个问题近期必须解决。

2007-05-04