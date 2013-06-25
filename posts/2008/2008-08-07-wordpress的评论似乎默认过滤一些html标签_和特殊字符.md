# wordpress的评论似乎默认过滤一些html标签 和特殊字符

wordpress的评论似乎默认过滤一些html标签，和特殊字符

比如我贴图，就显示不出来

比如我贴wikipedia上的url，有英文圆括号那种，也无法正确显示和链接。

      <a href="http://en.wikipedia.org/wiki/Somewhere_in_Time_(film)">http://en.wikipedia.org/wiki/Somewhere_in_Time_(film)</a></p>

在wordpress的评论中用上面的代码显示出来就不对。是

      http://en.wikipedia.org/wiki/Somewhere_in_Time_(film)

是链接到<http://en.wikipedia.org/wiki/Somewhere_in_Time_>。即使我用escape characters来代替()还是不行！

就是说我用这段代码

      <a href="http://en.wikipedia.org/wiki/Somewhere_in_Time_%28film%29
">http://en.wikipedia.org/wiki/Somewhere_in_Time_(film)</a>

还是只是到<http://en.wikipedia.org/wiki/Somewhere_in_Time_>的链接！

怎么回事？




2008-08-07