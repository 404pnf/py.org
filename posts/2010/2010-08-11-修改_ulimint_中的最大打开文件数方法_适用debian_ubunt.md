# 修改 ulimint 中的最大打开文件数方法 适用debian ubuntu 系列的 gnu linux

	参考： 

	$sudo gedit /etc/security/limits.conf    #open the file in gedit
	user  soft  nofile 9000
	user  hard  nofile 65000

	$ sudo gedit /etc/pam.d/common-session #open the file in gedit

	Then add the line:
	session required pam_limits.so

	Now after rebooting you can see in the terminal with ulimit -a the change.

	http://posidev.com/blog/2009/06/04/set-ulimit-parameters-on-ubuntu/

2010-08-11