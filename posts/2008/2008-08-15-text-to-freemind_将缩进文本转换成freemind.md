# text-to-freemind 将缩进文本转换成freemind

text-to-freemind: 将缩进文本转换成freemind

## 中文介绍：text-to-freemind: 将缩进文本转换成freemind
http://linuxtoy.org/archives/text-to-freemind.html

## 项目正式网站：

>http://uwstopia.nl/blog/2007/10/text-to-freemind-released
>
>I’m happy to announce the first (and perhaps even last) version of text-to-freemind, a simple text to FreeMind conversion program, licensed under the GPL.
>
>This program converts tab-indented text files into an XML format suitable for display by FreeMind. It was written out of annoyance with the FreeMind user interface, and the lack of ‘merging’ capabilities when collaborating with other people.
>
>Input like this (indentation should be done using tabs)...
>
>uws
>    superhero
>    hacker
>        gnome
>        web
>
>...results in:
>
>![Text-to-Freemind sample output](http://uwstopia.nl/files/2007/10/text-to-freemind-sample.png)

为什么无法tab自动不起文件名执行程序？ ./fre 按tab没反应
> **Of course you have to chmod +x text-to-freemind.make first.**

因为下载来的源代码在你的机器上是只读的。所以先 chmod 755 free* 一下吧

>Requirements
>
>The conversion program is written in Python (tested with 2.4 and 2.5) and requires an ElementTree implementation. Install python-elementtree or python-celementtree (included in Python 2.5) if you run into programs.
>
>The Makefile snippet obviously depends on the make utility. GNU/Make is known to work.

我的ubuntu gnu/linux 8.04上装了python2.5还是出问题。手工搜索了一下python-elementree 和 python-celmentree，都没有选中安装。
## freemind在sourceforge上
http://freemind.sourceforge.net/wiki/index.php/Main_Page
## 基于debian的发行版都应该能选freemind自动安装
在新立得软件包管理器中搜索“freemind”，选中后安装就可以了。

安装好后， freemind output.mm 就能查看了。

## 真棒！我会好好研究一下
不是我喜欢。是有人喜欢。喜欢的人是有钱的人，也许愿意花钱。我就是给人批量做freemind图。


2008-08-15