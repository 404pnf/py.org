# drupal网站动态内容和静态内容分离

## 我现在直接使用nginx就可以做到

nginx的conf中写好了，静态文件包括boost cache直接给nginx处理。php相关的给后台的php-cgi。
## lightttpd的例子，使用两个域名！

下面是挺早的一个例子了。有参考价值。现在大部分情况不需要这么搞了吧。

> http://www.lullabot.com/articles/using-lighttpd-static-file-server 
> Simpler approach
> I use a much simpler approach.
> (1) Set up a fast http server on a different port or different server (I wrote my own).
> (2) Redirect requests to static files (like files in the /files folder or images) via mod_rewrite to this server.
> But anyway, think it's a very useful idea to have different servers here!
> 
> Mod_Rewrite to pass requests to Lighttpd
> I use this little mod_rewrite gem on a non-drupal install to force all "static" file extensions to lighttpd.
> Enable mod_rewrite and mod_proxy and put this into your apache.conf
> RewriteEngine On
> RewriteRule "^/(.*)\.(jpg|jpeg|gif|png|swf|pdf|avi|mpeg|mpg|mp3)$" "http://127.0.0.1:81/$1.$2" [P]
> ProxyPassReverse / http://127.0.0.1:81/
