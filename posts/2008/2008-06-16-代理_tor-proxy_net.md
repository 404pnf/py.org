# 代理 tor-proxy net

代理： tor-proxy.net

## 简单介绍
http://tor-proxy.net/

发现几篇如何用代理访问wikipedia的文章不少人用上了。

wikipedia确实非常好的参考资料。不能方便使用是损失。

这个站点也有一些代理知识。如果你用firefox，可以使用它为firefox开发的插件。

有意思的是，这个站点在内地是可以直接正常访问的。 ：）那就学习些知识去吧。

## 使用方法

1. 最方边的方法是装firefox的插件，方便使用。该插件安装： https://addons.mozilla.org/en-US/firefox/addon/5833 这几天刚[升级到支持ff3](http://tor-proxy.net/en/node/15)



2. 直接在地址栏输入或把代理存入书签

tor-proxy.net的firefox插件一直没有升级到支持firefox3.0，无法方便使用。

刚发现直接把代理地址存为书签也能方便使用。

如果你要通过代理访问的就是那么几个站点，把加好站点名称的url存到书签就好。

比如：<https://tor-proxy.net/cgi-bin/nph-proxy_tor.cgi/000000A/en.wikipedia.org> 把这个url存到书签，以后一打开就是通过代理访问英文的wikipedia了。


> for TOR:
> Before the link add:
> 
> <https://tor-proxy.net/cgi-bin/nph-proxy_tor.cgi/000000A/>
> 
> and then followed by:
> 
> http/example.com
> 
> This would result in:
> 
> <https://tor-proxy.net/cgi-bin/nph-proxy_tor.cgi/000000A/http/example.com>
> 
> for JonDos / JAP:
> Before the link add:
> 
> https://tor-proxy.net/cgi-bin/nph-proxy_jap.cgi/000000A/
> 
> and then followed by:
> 
> http/example.com
> 
> This would result in:
> 
> <https://tor-proxy.net/cgi-bin/nph-proxy_jap.cgi/000000A/http/example.com>

## 该站点用了drupal的翻译模块

该站点使用drupal，用了drupal的多语种翻译模块，很不错。就是说一篇文章有多个语种版本，但node是一个

      http://tor-proxy.net/en/node/15
      http://tor-proxy.net/de/node/15

分别是英语和德语版本的同一篇文章。




2008-06-16