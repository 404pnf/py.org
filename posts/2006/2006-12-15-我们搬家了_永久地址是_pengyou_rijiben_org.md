# 我们搬家了 永久地址是 pengyou rijiben org

我们搬家了 永久地址是 pengyou.rijiben.org

很顺利。暂时没有发现什么问题。

数据库方面只用做如下修改
update node_revisions set body=replace(body,'oldur.org/rijiben','pengyou.rijiben.org'),
teaser=replace(teaser,'oldur.org/rijiben','pengyou.rijiben.org') 
where body like '%oldur.org/rijiben%' or teaser like '%oldur.org/rijiben%'

上面这条命令是调整文章**正文**和**正文摘要**中连接了**本站文章**的url。因为这些是作者写在他们正文里面的。要不让他们自己一个个改，要不我来改。这些修改不多。因为似乎只有我在文章里连其他朋友和自己在这里发的文章。

然后在apache配置文件设置相应子域名对的目录就好了。

子域名指向我前几天就做好了。所以整个过程，加上在小拉机子上本地测试不超过20分钟。

多说几句。

drupal有一个好处就是它的数据库中不纪录每篇文章每个评论的url,它有base url这个概念。如果你base url留为空，我就是这样，这些地址是根据你如何访问确定的。

比如，我从 pengyou.rijiben.org访问。那么所有文章和留言的url就是 pengyou.rijiben.org/node/4 之类。

我从 129.0.0.22/rijiben访问，那么所有文章和留言的url就是 129.0.0.22/rijiben//node/4 之类。

有些程序，如wordpress之类文章的url是记录在数据库中。

这样的话。如果外网断了。你用内网访问。每访问一个也面都需要手工把外网地址改成内网地址


2006-12-15