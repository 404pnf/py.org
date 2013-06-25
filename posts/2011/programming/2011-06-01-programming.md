1. programming toc
{:toc #toc}

# 9本免费python书

<http://iyouf.info/some-python-book.html>

2011-09-27

# jokisher 类似audacity的录音软件 是自由软件

<http://www.jokosher.org/>

2011-09-27
# learn ruby resources

<http://humblelittlerubybook.com/book/>

2011-09-27
# ruby下一个极简主义的站点发布程序

https://github.com/chriseppstein/nanoc
http://nanoc.stoneship.org/docs/3-getting-started/

写这个程序的人在github上还有不少有意思的程序。

2011-09-27
# 再看txt2tag项目 更成熟了

tt tools, free.software tt
http://txt2tags.org/online.php

我用markdown转thml很好，但很难直接生成其它格式。当然可以从html生成其它格式。txt2tag直接支持生成到各种格式。

2011-09-27

# 学习各种语言代码片段的好地方

http://snipplr.com/

给个例子：

      convert -density 400 $INPUT.pdf -scale $Wx$H $OUT.jpg
http://snipplr.com/view/46787/imagemagick-conversion-pdfjpg/

      find . -name .svn -print0 | xargs -0 rm -rf

<a href="http://address.com/" title="Title Here" onclick="window.open(this.href,'newwin'); return false;">Insert Link Title</a>
http://snipplr.com/view/282/standard-compliant-way-to-open-a-new-page-no-target-tag/

2011-09-27

# 学习用python编游戏

http://inventwithpython.com/chapters/
2011-09-27

# 用gem安装程序总出现这样的错误 就是failed to build gem native extention

     ERROR:  Error installing rdiscount:
     ERROR: Failed to build gem native extension.

搜索了一下，发现有人说安装ruby1.8-dev就可以了（ http://railsforum.com/viewtopic.php?id=22116 ）。于是安装

      sudo apt-get install ruby1.8-dev

之后用gem装程序就可以了。

      $ sudo gem install rdiscount

      Building native extensions.  This could take a while...
      Successfully installed rdiscount-1.6.5
      1 gem installed
      Installing ri documentation for rdiscount-1.6.5...
      Installing RDoc documentation for rdiscount-1.6.5...
2011-09-27

# 用rvm安装ruby 1 9 2和rails 3

https://gist.github.com/296055

2011-09-27

# 用例子学习各种变成语言的自由协议下发布的图书大集合

[tags] 学习,自由文化,web.server,工具,翻译 [/tags]
http://pleac.sourceforge.net/
> Summary
> 
> Following the great Perl Cookbook (by Tom Christiansen & Nathan Torkington, published by O'Reilly; you can freely browse an excerpt of the book here) which presents a suite of common programming problems solved in the Perl language, this project aims to implement the solutions in other programming languages.
> 
> If successful, this project may become a primary resource for quick, handy and free reference to solve most common programming problems using various programming languages, and for comparison on ease-of-use and power/efficiency of these languages.
> 
> The material, considered as some Documentation, is wholly released under the Gnu Free Documentation License, except the Perl part, which is copyrighted by O'Reilly & Associates yet freely available.
> 
> Please subscribe to the discussion mailing-list if interested in the project. 
2011-09-27

# lisp教程

http://www.cs.sfu.ca/CourseCentral/310/jim/

2011-11-30

# racket 新的scheme语言

http://racket-lang.org/

2011-11-30

# Structure and Interpretation of Computer Programs 全文在线阅读

http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-1.html
2011-11-30

# 中国lisp用户组

http://lisp.org.cn/wiki/?
2011-11-30

# 使用ghci的时候出现这个错误如何解决
Prelude> a = 3
 
<interactive>:1:2: parse error on input `='
I figured there must be something wrong with my installation of the compiler since I was copying and pasting the example across and having this problem. Having reinstalled that, however, I still had the same problem.

I eventually came across this blog post which points to a mailing list thread from a few years ago where pjd explains that the ‘let’ construct is required when defining a variable from ghci and wouldn’t necessarily be needed in a normal program:

pjd	osfameron: about the ghci thing, you have to prefix definitions with “let”

as in: let simple x y z = x * (y + z)

pjd	the reason for this is that ghci is in an implicit do block

pjd	so it’s not exactly like top-level haskell

We have to use a ‘let’ in front of any variable/function definitions and then it will work as expected:

http://www.markhneedham.com/blog/?s=parse+error+on+input+`%3D%27


2011-11-30

# 又一个lisp教程

Learning Lisp for CMPT 310
http://www.cs.sfu.ca/CourseCentral/310/pwfong/Lisp/

2011-11-30

# 在线书 Common Lisp the Language
   Common Lisp the Language, 2nd edition
   by Guy L. Steele, Thinking Machines, Inc.
   Digital Press
   1990 paperbound
   1029 pages
   ISBN 1-55558-041-6  $39.95

2011-11-30

# 在线阅读非常非常经典的一本计算机编程的书 SICP
Structure and Interpretation of Computer Programs

second edition 

Harold Abelson and Gerald Jay Sussman 
with Julie Sussman 
foreword by Alan J. Perlis 

<http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-1.html>

2011-11-30

# 学习haskell的基本好书在线阅读 包括 learn you a haskell for great good
全书在线阅读： <http://learnyouahaskell.com/chapters>

http://learnyouahaskell.com/faq 推荐了下面的书：

read world haskell这本书全文阅读
<http://book.realworldhaskell.org/read/>

<http://tryhaskell.org/>

2011-11-30

# 学习lisp很好的网站

<http://play.org/links/lisp-intro>
<http://www.cs.gmu.edu/~sean/lisp/LispTutorial.html>
<http://www.gigamonkeys.com/book/>
<http://paulgraham.com/acl.html>
<http://cl-cookbook.sourceforge.net/>


2011-11-30

# 学习scheme
## The Scheme Programming Language 
Fourth Edition
R. Kent Dybvig
Illustrations by Jean-Pierre Hébert
<http://www.scheme.com/tspl4/>

## 安装scheme

	apt-get install mit-scheme

然后输入 scheme 就进入交互模式。我在ubuntu下竟然左箭头无法使用，造成不能出现输入错误，因为无法删除！！

这是应该用rlwrap这个工具。apt安装。

再装scm <http://people.csail.mit.edu/jaffer/scm/Installing-SCM.html#Installing-SCM>

   apt-get install scm
   
这个支持命令行编辑和历史。输入scm开始编程。
   
## 很多scheme的实现
http://community.schemewiki.org/?scheme-faq-standards#implementations

2011-11-30

# 学习scheme和lisp
This site is a companion to the influential computer-science text Structure and Interpretation of Computer Programs, by Abelson, Sussman, and Sussman. Its purpose is to demonstrate the Web's potential to be a channel for innovative support for textbook users.

The material on this site is aimed at instructors using SICP as a course text, and at people using the book for self-study.
Currently at this site you will find:

 Full text!
The complete text in HTML.

http://mitpress.mit.edu/sicp/


2011-11-30

# 学习音频录音和处理的大学站点
https://ccrma.stanford.edu/

其中一个课程是 lips workshop for musicians
https://ccrma.stanford.edu/CCRMA/Courses/LispWorkshop/

2011-11-30

# 新的转换pdf到其它格式 如html的工具

http://www.hardcoded.net/pdfmasher/

2011-11-30

# 義 yi 用haskell写的haskell程序编辑器

http://www.haskell.org/haskellwiki/Yi#From_Hackage

2011-11-30

# 针对孩子的学习系统

> The award-winning Sugar Learning Platform promotes collaborative learning through Sugar Activities that encourage critical thinking, the heart of a quality education. Designed from the ground up especially for children, Sugar offers an alternative to traditional “office-desktop” software.
> http://sugarlabs.org/

2011-11-30

# 音乐家学习使用lisp

https://ccrma.stanford.edu/CCRMA/Courses/LispWorkshop/

2011-11-30

