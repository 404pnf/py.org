# 开启和关闭root帐号其实就是用passwd的 -l lock 命令啊

有的时候我需要打开root帐号用root来做事情。比如我的备份脚本。是把/etc/下，/usr/local/ 下一些配置和程序都先备份到本地，然后rsycn到其他机器。这时候如果不用root帐号，普通用户无法复制一些需要备份俄你的文件

启用root帐号就是重新设定root密码

	sudo passwd root

锁住root帐号就是lock它的密码

	sudo passwd -l root

https://help.ubuntu.com/community/RootSudo
http://www.ducea.com/2006/06/21/ubuntu-how-to-enable-the-root-account/

http://www.debianadmin.com/enable-and-disable-ubuntu-root-password.html
