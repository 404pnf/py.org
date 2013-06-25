# markdown语法中如何表示嵌套的列表 nested lists 也没有定义列表 definition list

markdown语法中如何表示嵌套的列表（nested lists）也没有定义列表（definition list）？

今天需要用到nested lists才发现这个问题。markdown正是网站给的信息里肯定没有： http://daringfireball.net/projects/markdown/syntax


不知道有没有什么work-around呀。

查了一下，nested lists要求下一级的list有4个空格做indent就好了

参阅 
> http://six.pairlist.net/pipermail/markdown-discuss/2007-July/000709.html
> There's no limit to nesting; Markdown just seems to be confused by
your indentation. Make sure you always indent each successive nesting
level exactly four spaces, and everything will work fine: 

markdown的syntax页面没有提到nest lists，但dingus页面却提到了。markdown项目应该及时更新一下syntx页面了。

> http://daringfireball.net/projects/markdown/dingus
> 
> You can nest them:
> 
> *   Abacus
>     * answer
> *   Bubbles
>     1.  bunk
>     2.  bupkis
>         * BELITTLER
>     3. burper
> *   Cunning
> 

## definition list只是在php markdown extra中才有

到2008年6月，markdwon和基于markdown的emacs markdwon-mode中还没有相应语法。




2008-06-11