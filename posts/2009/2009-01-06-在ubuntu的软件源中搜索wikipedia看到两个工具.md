# 在ubuntu的软件源中搜索wikipedia看到两个工具

在ubuntu的软件源中搜索wikipedia看到两个工具

## wikipedia2text

> displays Wikipedia articles on the command line
> This script fetches Wikipedia articles (currently supports around 30
> Wikipedia languages) and displays them as plain text in a pager or
> just sends the text to standard out. Alternatively it opens the
> Wikipedia article in a (possibly GUI) web browser or just shows the
> URL of the appropriate Wikipedia article.

使用起来很简单。安装后，命令行下输入 wikipedia2text 它给出帮助。

比如我现在命令行喜爱快速查看wikipedia英文的free sfotware条目。只需要

      wikipedia2text free software

默认搜索英文wikipedia，默认没有翻页，全部滚屏。文章长前面的部分就滚过去了。所以加上翻页（pager）的开关： -p

      wikipedia2text －p free software

你当然也可以使用bash管道

      wikipedia2text free software|less

但 -p 输入字符少啊。

如果你查找中文条目，用 -l 开关设定语言， l 就是 language 呗，中文是 zh

      wikipedia2text -p -l zh 庄子

就显示庄子的中文条目。

很方便。命令行下就是好。

唯一问题是中文因为存在繁体和简体。似乎无法设定获取哪个。我看到是简体。

有一个好处，就是如名称所说的，它给你输出的文章是纯文本的，可以方便定向到某个文件和做其他操作。

## wikipediafs
View and edit Wikipedia articles as if they were real files
WikipediaFS is a mountable Linux virtual file system that enables you
to deal with Wikipedia (or any Mediawiki-based site) articles as if
they were real files.

It is thus possible to use a real text editor to view and edit
articles.

http://wikipediafs.sourceforge.net

## libwww-mediawiki-client-perl

> simple CVS-like interface for editing MediaWiki websites
> This package includes the MVS client and the WWW::Mediawiki::Client perl
> library implementing the functionality in MVS. WWW::Mediawiki::Client provides
> a very simple CVS-like interface for viewing, staying in sync with, and
> editing pages in websites that run Mediawiki software. In particular, the
> software is extremely useful for editing pages in Wikipedia or other Wikimedia
> websites.
> 
> MVS is a command line client whose purpose is to simplify offline editing of
> Wiki content.  It allows you to get any number of pages from a given Mediawiki
> site, edit the pages with any editor, get and merge any concurrent updates of
> the pages, and then safely commit the users own changes back to the version of
> the page on the server.

这个好厉害。：）不用开浏览器就能编辑和管理网站的东西我都喜欢。：）


2009-01-06