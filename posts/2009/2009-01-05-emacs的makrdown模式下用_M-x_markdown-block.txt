# emacs的makrdown模式下用 M-x markdown-blockquote-region 或者快捷键 c-c c-s c-b将选中区域标志html的blockquote

## 什么是blockquote
顾名思义，即使区块引用。在英文行文体例中，一般引用的话多余一句，需要单独另起一段，并缩近。否则就有抄袭别人文字的嫌疑。这个体例在网上各种语言都很流行。

markdown中用 > 表示该行为html中的引用。因此，下面这段代码，

      > 引用别人的话
      > 还是引用别人话

到了html里显示效果就是：

> 引用别人的话
> 还是引用别人话

## 快捷键是什么

选中区域后用 M-x markdown-blockquote-region 或者快捷键 c-c c-s c-b。

这个快捷键也不麻烦。

我以前一直用选中区域后，C-x r t，就是矩形操作插入字符这个命令。emacs会询问插入什么字符，输入英文右尖括号，回车就好了。

今天比较了一下，还是用markdown默认的快捷键省了3次按键，特别是用我的方法还需要按shift，比较麻烦。


2009-01-05