# 有时mysql启动不了 不报错就是不动 关闭apparmor能解决问题

第二次遇到这个问题了。运行 sudo /etc/initi.d/mysql restart 和 sudo restart mysql 都不行。命令行不动了。

关闭apparmor，同样命令启动就可以了。

我不知道为什么。apparmor中有什么限定。

 	sudo /etc/init.d/apparmor stop
