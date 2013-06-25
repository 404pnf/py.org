# 本机装一个nginx php的测试环境又出现了 no input file specified 错误 解决了

这篇文章给的解决问题的思路和步骤很好。
http://qlj.sh.cn/linux/20090815/nginx-php-no-input-file-specified/

我的错误就是 fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name; 没有设定对。按照前面的设定就可以了。

另外，apt安装的php-cgi配置文件在 /etc/php5-cgi 下面


2010-09-26