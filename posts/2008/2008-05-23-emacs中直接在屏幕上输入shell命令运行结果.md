# emacs中直接在屏幕上输入shell命令运行结果

## emacs中直接在屏幕上输入shell命令运行结果

## emacs中直接在屏幕上输入shell命令运行结果

简单说就是：

      C-u M-!

比如 C-u M-! date 就直接在你光标点插入当前日期。date的格式是可以在shell中设定的。自己man一下。

我比较喜欢这种格式

         date --rfc-3339=date

出现的结果是类似 2008-05-13

我准备用这个命令来记录写一篇文章的时间。当然如果你老需要用，帮定一个快捷键最好了。

如果我常用这个命令，我会给bash的date命令来一个alias。比如我把 date --rfc-3339=date 起一个别名叫 dateiso。以后用dateiso就可以显示同样内容了。我现在就去。

弄好了。方法是在bash中输入 

      alias dateiso='date --rfc-3339=date'

以后输入dateiso命令就可以了。

## 我遇到了问题

这应该是bash的问题不是emacs的。就是我自己起的别名无法在emacs中调用。我想是因为emacs失去找 /usr/bin/ 下的命令。但找不到我刚定义的 dateiso 这个命令。报错：

      /bin/bash: dateiso: command not found

我自己在命令行下输入dateiso可以的。但emacs中不行。

请高人指教！

2008-05-23