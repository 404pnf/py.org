# 现在我如何启动php-fastcig


## 现在使用的方法
这个方法不好，参考 http://pengyou.rijiben.org/node/3185

## 之前的方法
参考： http://www.cyberciti.biz/faq/freebsd-configure-nginx-php-fastcgi-server/

然后在本机安装一个lighttpd，把 /usr/local/bin/spawn-fcgi 复制到服务器一个目录下。这个文件是lightttpd带的，用来启动fastcgi的。

在服务器上写一个脚本，一句话： /home/apache/apps/spawn-fcgi -a 127.0.0.1 -p 3456 -u apache -g apache -f /home/apache/apps/fastcgiphp/bin/php-cgi  可以把这句话加到 /etc/rc.local 让它开机启动




2010-09-26