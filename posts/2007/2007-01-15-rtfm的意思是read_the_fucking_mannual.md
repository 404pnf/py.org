# rtfm的意思是read the fucking mannual

mit有一个很著名的站点，子域名就是rtfm。

不知道为什么现在 rtfm.mit.edu 没有了？谁知道哪里去了？

早年我经常见到它或用它是因为它上面存档的新闻组每个组的faq和各种计算机相关的faq和rfc（？）文档。

那会儿看新闻组上faq的传信地址必定有这个站点。

后来不知道在什么时候知道了rtfm的意思是read the fucking mannual。就是“读他妈的手册去”。

这个rtfm其实是很有道理的。也激励了一代代向我这样的青年。哈哈。我还不够格，我还是太懒。而且我觉得有的东西自己花太多时间读手册不如别人告诉你并且告诉你为什么。

今天说这个是因为再次体会到在没有外力的帮助的时候，自己一个人rtfm还是有用的。

比如我想通过rsync在ssh通道备份东西。我看到的所有例子都是默认ssh在22端口运行。而我为了挡垃圾ssh攻击，让ssh运行在另一个端口，比如3333吧。这种提高安全性的方法叫pseudo-security，但确实能档些垃圾攻击。

我没找到任何人给出如何在rsync中设置非标准端口。自己怎么都试验不出来。没办法，man rsync。一点点看。就看到了。问题解决了：）

     Command-line  arguments  are  permitted  in COMMAND provided
              that COMMAND is presented to rsync  as  a  single  argument.
              For example:

                 -e "ssh -p 2234"

              (Note that ssh users can alternately customize site-specific
              connect options in their .ssh/config file.)

              You can also choose  the  remote  shell  program  using  the
              RSYNC_RSH environment variable, which accepts the same range
              of values as -e.


2007-01-15