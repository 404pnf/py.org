# 如何解决drupal多站点使用squid之类cache proxy出现站点错乱的现象

## 如何解决drupal多站点使用squid之类cache/proxy出现站点错乱的现象

> Multi-site hosting with Drupal

> Drupal has a feature that allows multiple sites to be served from a single installation. This feature can be used at NearlyFreeSpeech.NET, but by default it will run afoul of the distributed caching network. To make this feature work properly, add the following line to your .htaccess file:

>       Header append Vary Host

> This will indicate to web caches that the responses you send may depend on the Host: header, which contains the name of the site being requested. 

> https://members.nearlyfreespeech.net/wiki/Applications/Drupal

我的站点都在nearlyfreespeech，上面一套drupal代码跑多个站点确实出现了类似问题。按照说明，在.htaccess文件加上 Header appen Vary Host，就好了。


2008-03-27