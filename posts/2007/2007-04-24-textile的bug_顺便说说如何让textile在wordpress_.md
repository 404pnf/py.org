# textile的bug 顺便说说如何让textile在wordpress lyceum中正确处理中文和有重音的外文

textile的bug；顺便说说如何让textile在wordpress/lyceum中正确处理中文和有重音的外文

textile的作者没有在textile.php中明确输入和输入的语言类型造成了中文变成乱码。

修改的方法

编辑textile.php查找 char_encoding 这个关键词
找到下面几行

       // head_offset sets the amount to increase     header level (i.e. h1. be$
           $textile->options['head_offset'] = $this->settings['0'];
           $textile->options['char_encoding'] = $this->settings['utf-8'];
           $textile->options['input_encoding'] = $this->settings['utf-8'];

我现在改成utf-8的地方以前写的是 Encoding和InputEncoding。看drupal社区的人说这个代码如果不明确改成你用的字符集，那么就会出现问题，因为encoding和inputencoding都是错误的值，这个php脚本就无法知道用户到底用的什么字符集。改成你用的就好了。

参考

>http://drupal.org/node/6881
>5 submitted by Gabriel Radic on July 30, 2004 - 10:37
>If you are using UTF-8, changing the char_encoding option is recomended and it works well.

> http://drupal.org/node/11357
>6 submitted by jhriggs on March 21, 2005 - 16:32
>There were two things going on here. First, the module did not specify utf-8 as the charset for the Textile class. Second, there was a bug in TextilePHP that caused it to ignore false values for char_encoding. This is all addressed in the latest files in CVS. The lastest version for both 4.5 and 4.6 should work properly.

现在我可以在lyceum中使用textile了。

2年前我就遇到了textile处理中文的问题。当时提交bug report也没人理我。

现在不同了，今天晚上花了快一个小时，最后还是在drupal这里找到了方法。而且这个bug是drupal志愿者port textile成为一个drupal module是发现和解决的。网上我没找到任何关于这个bug的文章。官方wordpress插件也存在这个bug。我把它解决了。自己可以使用了。真是高兴 ：） 

特别高兴。

本周第二高兴的事情。

这个产生的影响将是深远的。哈哈。因为我要用lyceum了。以后也可以尝试在drupal中使用这个输入法。

本周第一高兴的是lvcha写了个ruby脚本帮我处理从html文件中提取我要下载的mp3的url。过过再写那件高兴的事。

2007-04-24