# 用 htaccess通过referer中的信息阻挡特定站点不让他们访问

用.htaccess通过referer中的信息阻挡特定站点不让他们访问

我现在没有成功。

这是我的方法。

    # block mp3.baidu.com by referer info
     RewriteCond %{HTTP_REFERER} mp3\.baidu\.com [NC,OR]
     RewriteRule .* - [F]

如果使用了，网站根本无法访问。报错： 

      Forbidden

      You don't have permission to access /index.php on this server.

有谁知道是怎么回事？
我觉得问题是最后一行的

       RewriteRule .* - [F]

因为我本把它注释掉或把 .* 去掉都可以正常访问。


参考
http://drupal.org/node/24302
http://www.javascriptkit.com/howto/htaccess14.shtml
http://wiki.rijiben.org/Ziyouruanjian/%e9%98%bb%e6%ad%a2%e4%bb%8e%e7%89%b9%e5%ae%9arefer%e6%9d%a5%e7%9a%84%e8%ae%bf%e9%97%ae

在研究这个问题的时候，一位领导和他的朋友正在旁边的会议室/多功能厅唱卡拉ok。爽朗的歌声和笑声啊，激烈的掌声和叫好声啊。ai3~ ya~!
