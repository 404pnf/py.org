# firefox中cookie存 保存在哪里

firefox白cookie存/保存在哪里

我用gnu/linux。cookie存放在

      ~/.mozilla/firefox/xbrpcwbx.default

可是我指找到了一个cookies.sqlite的文件。这是sqlite的数据库。二进制的。cookies存在里面我其它程序如何调用阿。如果是以前的cookies.txt，wget和curl等可以直接读取那个cookies.txt。但现在这个格式，我尝试了 wget --load-cookies /path-to-the-file/cookies.sqlite ，不行。报错cookies那块过不去。

      wget: realloc: Failed to allocate -1543503872 bytes; memory exhausted.
上面就是错误信息。

windows嘛，[自己看去](http://forum.moztw.org/viewtopic.php?p=7951)。

我先用这个题目搜索，第一次用存在哪里，没什么好结果。用保存在哪里，第一个结果就不错。

2008-05-23