# 问一个mysql的日志文件的问题 var log mysql 中的文件如何处理

现在服务器上  /var/log/mysql 中的文件如何处理有20g

格式是
mysql-bin.000489
mysql-bin.000490
mysql-bin.000491

都是binary。

这些文件是干吗用的。如何处理他们。如果我想清除一下。具体应该怎么做。比如清除的时候要注意什么。是否应该备份，删除中是否应该停了mysql，删除后是否需要重新启动mysql等。因为它们都是bin文件让我莫不着头脑。

/var/log/apache2 下的日志倒是不多，1g多。那个清除正确方法是什么。那个直接删除了不会影响系统，不过统计信息丢了。这个mysql我是一点不懂，所以不敢动。

2006-11-02