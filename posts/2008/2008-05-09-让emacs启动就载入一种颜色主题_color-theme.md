# 让emacs启动就载入一种颜色主题 color-theme

## 让emacs启动就载入一种颜色主题（color-theme）

我参考了这篇文章
http://www.emacswiki.org/cgi-bin/emacs-en/ColorTheme

具体我用了下面的代码：

   (require 'color-theme)
   (setq color-theme-is-global t)
   (color-theme-robin-hood)

把这段代码放到了我的.emacs文件中。

给出的例子是用robin-hood这个主题。你把它改成你要用的。

尝试各种color-theme的方法是按 M-x color-theme 然后不断按tab补齐，会列出很多theme名字，你选择试试看。

我觉得gnome2和matrix也不错。

2008-05-09