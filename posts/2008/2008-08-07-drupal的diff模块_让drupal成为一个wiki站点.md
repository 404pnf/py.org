# drupal的diff模块 让drupal成为一个wiki站点

drupal的diff模块，让drupal成为一个wiki站点

ikiwiki的问题是它不能使用另一个站点的版本管理程序。比如，我把ikiwiki装在 wiki.exampleorg，用git来管理文章，我希望用gitorious.org的一个git库，但不能。只能是该主机的git库。

即使这样，ikiwiki仍是我见到的最好的wiki系统。

只后又重新看了pmwiki和mediawiki。pmwiki好一些。mediawiki的唯一好处是如果我老要翻译wikiepdia之类的文章，直接复制文章的源代码过来就能用。但我后来发现wikipedia上的文章里关键词链接太多，而且都是链接到wikipedia其他条目的，对于我反而麻烦。因为我的站点肯定没有那些条目。还要去调那些链接，反而麻烦。

最后，又是回到drupal！

drupal内部就提供若版本控制，修改一篇文章内容后，你可以明确告诉durpal保留旧版本，把修改的存为新版本。你也可以设定某一内容类型，自动保存每次修改的新版本。

现在就却一个丢比新旧版本的工具了。

这就是diff模块。

好了！最后还是回到durpal了。durpal也支持wikipedia用的编辑语法。

因为我太喜欢简洁url了。我不能忍受url中出现中文。特别是wiki系统一般已页面的名字作为url，那么该页面一改名字，url也变了。虽然哟redirect，但还是不如阿拉伯数字通用和简单。

看来我还是不要东研究西研究了。都在druapl中！

当然，使用所有这些程序都没有使用svn或者git好，因为合并文章的时候，用专门的版本控制工具非常快速简单，在浏览器里编辑，太慢太恐怖了。

因此，提出要求，文章开始发出来质量就要高，减少以后可能需要的修改次数。


## 想快速查看哪些文章有人修改了，用recent change模块
http://drupal.org/project/recent_changes


2008-08-07