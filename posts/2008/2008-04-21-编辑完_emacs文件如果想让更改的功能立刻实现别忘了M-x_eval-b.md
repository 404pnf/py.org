# 编辑完 emacs文件如果想让更改的功能立刻实现别忘了M-x eval-buffer一下

## 编辑完.emacs文件如果想让更改的功能立刻实现别忘了M-x eval-buffer一下

编辑你的.emacs文件，进行各种参数修改，功能删减，编辑完了回到文件中发现怎么没有用啊？当然了，你还没明确告诉emacs要让那些更改生效呢？那该怎么办？

2种方法。

1、退出emacs并重新启动。这样emacs启动时就会读入修改了的.emacs文件。

或者

2、在编辑.emacs的那个buffer按 M-x eval-buffer。就是按 Alt-x eval-buffer。教你简单的记忆方法。Alt-x一般都是切换模式，或者输入命令用的。eval是evaluate的意思，就是求值。buffer是emacs中一个基本概念，你应该差不多明白。求值，就好像让它读入参数一样。所以你只要alt-x ev之后输入tab键，就会自动补齐为eval-你再按个b，然后按tab补齐，就八九不离十了。



2008-04-21