# 解决了windows机器上从nginx代理到后面的apache时目录必须以反斜杠结尾否则出错的问题



明确地在nginx中写了

      proxy_redirect http://s.2u4u.comc.cn:8081 /;

后，问题解决了。

我没深究原因，似乎是这个xampp的配置中，apache配置里添加了给每个uri都添 加 ending slash，也就是一个斜杠。这种配置下，nginx中需要写上上面那句。 也属于试验的时候一个个尝试出来的


2010-09-26