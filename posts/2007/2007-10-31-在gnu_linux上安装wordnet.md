# 在gnu linux上安装wordnet

wordnet on gnu/linux

如果你使用基于debian版本的gnu/linux，比如我用的ubuntu gnu/linux直接

	sudo apt-get install wordnet 

就可以了。需要开universe。如何开，去sudo /etc/apt/sources.list 把universe软件库前面的注释去掉就行了。看来wordnet还仍然不是自由软件。

或者用图形的新立得软件包管理器搜索wordnet然后选中安装。

用上面的办法，下面我说的这些都不用看了。如果你是高手，帮我看看我错在哪里了。

更新：用图形界面在命令行输入wnb就可以了。

<!--break-->

装好了在term中研究了半天才大概明白我常用的需要怎么用。

	wn 单词
是查找单词。比如 wn love 就是查love。但它给的解释不是我平常在网上或者通过google define:love 那种形式。研究了半天，我一般需要的是这个词的overview。那么就用

	wn love -overview

就可以了。

如果做一个alias来默认wno love 就是wn love -overview呢？请高手指点。

wordnet需要我研究的很多呀。应该有个gui的，只是我还没搞明白。在windows上和mac上都是有gui查找的。

还有其他命令要学
SEE ALSO
       wnintro(1WN), wnb(1WN), wnintro(3WN),  lexnames(5WN),  senseidx(5WN)  wndb(5WN),  wninput(5WN),
       morphy(7WN), wngloss(7WN), wngroups(7WN).

我晕，如果想要图形界面在命令行用wnb就可以了。应该是wordnet browser的意思。：）




开始安装wordnet遇到困难：

first, wordnet on web page
http://www.cozyenglish.com/dictionary?search=wordnet
it's a google gadget

http://wordnet.princeton.edu/obtain#nix

need to install tcl and tk first. just what i need :) i wanted to learn some tcl/tk. hehe
http://www.tcl.tk/software/tcltk/platforms.html

装activestate的包后在term中，如果使用path。安装程序会提示你这些信息
      PATH="/home/baixy/ActiveTcl-8.4/bin:$PATH"


安装wordnet相信步骤




装wordnet， ./configure 后报错

      checking for Tcl configuration... configure: WARNING: Can't find Tcl configuration definitions

用whereis tcl , whereis tk 查找一下，参考 http://www.ubuntu-cs.org/forum/post.php?action=reply&fid=36&tid=1295&repquote=11607

       ./configure --with-tclconfig=/usr/lib/tcl8.4/ --with-tkconfig=/usr/lib/tk8.4/

还是报错 

      checking for Tcl configuration... found /usr/lib/tcl8.4/tclConfig.sh
      checking for Tk configuration... configure: error: /usr/lib/tk8.4/ directory doesn't contain tkConfig.sh

按照这个说明 http://www.speech.kth.se/wavesurfer/archive/121.html 我装了tcl和tk的dev。名称分别是 tcl8.4-dev和tk8.4-dev 。8.4是版本号。如果你看到此文8.5已经是稳定版了，就换一下，或者用新立得软件包搜索名称来安装。

之后再来

       ./configure --with-tclconfig=/usr/lib/tcl8.4/ --with-tkconfig=/usr/lib/tk8.4/

成功了。：）

接下来我 make 。一大堆错误。不管，继续 make install 。没有安装成功。但似乎有些文件服知道 usr/local/ 什么。

侥幸心理看是不是装了，输入 wordnet。你猜怎么招？




当然不是安装成功！


而是

	404@yourhome:~/wordnet/WordNet-3.0$ wordnet
	程序 'wordnet' 尚未安装.  你可以通过输入下面内容安装：
	sudo apt-get install wordnet
	请您确认组件'universe' 已被激活
	bash: wordnet：找不到命令


啊。原来apt就能安装啊。正好开着一个新立得，用图形界面查一下wordnet都有哪些。一看不少。都装了。：）

哎呀，折腾这么半天。其实这么简单。不过看来如果从源代码开始，这个wordnet我还是装不起来的。






2007-10-31