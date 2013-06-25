# M-x all 在emacs编辑所有包含一段特定文字的行 来自emacs-goodies el

M-x all :在emacs编辑所有包含一段特定文字的行;来自emacs-goodies.el

## 想不想快速查看很长的文件中有哪些行包含了特定字符

      Alt-x all

输入你匹配的正则表达式，这里我是 http://.*mp3
会出现新buffer显示所有有该字符串的行
到新开的那个buffer去编辑那些行，保存，就可以了。

好处是，把这些行单独摘出来放在一起，纵览全局，而且界面干扰少，没有不相关的文字，从一样到另一行方便。

这需要你装了 emacs-goodies.el。一般在debian gnu/linux上选中这个包安装就好了。

## 该插件的info page
,----
| File: emacs-goodies-el,  Node: all,  Next: apache-mode,  Prev: align-string,  Up: Top
| 
| 2 all - Edit all lines matching a given regexp.
| 
| This is an implementation of the xedit `all' command for GNU Emacs.
| 
|    It works mostly like `occur' except that changes to the `*All*'
| buffer are propagated back to the original buffer.
| 
|    Type `M-x all' to try it out.
`----


2008-07-16