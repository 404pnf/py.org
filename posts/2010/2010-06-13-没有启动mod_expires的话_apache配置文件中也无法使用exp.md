# 没有启动mod expires的话 apache配置文件中也无法使用expire相关指令


	sudo a2enmod expires
Enabling module expires.
Run '/etc/init.d/apache2 restart' to activate new configuration!

害的我浪费半天时间检查自己的cache设置为什么没有作用

参考： http://www.electrictoolbox.com/apache-mod-expires-browser-caching/


2010-06-13