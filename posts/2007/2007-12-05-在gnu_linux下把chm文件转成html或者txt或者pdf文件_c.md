# 在gnu linux下把chm文件转成html或者txt或者pdf文件 convert chm to html

## 我现在用的方法

> convert chm to html
> http://madphilosopher.ca/2006/09/how-to-convert-chm-files-under-linux/

> In Debian or Ubuntu:

      $ sudo apt-get install libchm-bin

现安装libchm-bin这个程序

      $ extract_chmLib 需要解开的文件.chm 解开后的目录

需要解开一个chm，先输入命令，不用输入全，输入extr然后按tab键就能自动补齐这个命令了。后面跟一个空格，然后是chm文件名，再一个空格，解开后文件放在哪个文件夹下

比如我得到的电子书是 微软的chm的私有格式真混蛋.chm，想解开它为html，解开到  “去死吧”目录下，我输入的命令是

        $ extract_chmLib 微软的chm私有文件格式真混蛋.chm 去死吧

那么就会出现一个 “去死吧”目录，里面是解开拿本书的内容，在Temp文件夹下。

如果你从源代码安装

      $ tar xzf chmlib-0.35.tgz
      $ cd chmlib-0.35/
      $ ./configure
      $ make
      $ make install
      $ make examples

去看那人写的文件有更多信息。

我机器里已经按这个方法装了并可以用了。看来以前就查过。：）

## 还有一些相关信息
http://www.ubuntugeek.com/how-to-view-chm-microsoft-compiled-html-help-files-in-ubuntu.html
http://ubuntuforums.org/showthread.php?t=195457
> think there's a utility called 'htmldoc'.
> Code:
> apt-cache search htmldoc
> htmldoc - HTML processor that generates indexed HTML, PS, and PDF

看来htmldoc也是个不错的选择。以后实验一下。


我怎么记得以前写过类似的文章啊。


2007-12-05