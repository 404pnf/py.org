1. programming toc
{:toc #toc}
# gnu linux下转换繁体字到简体字的程序

我尝试了一下，复制一段繁体字存为utf8的txt然后转换成简体的utf8的txt，没有成功。不解。

> 偶然需要把一些繁体字的帮助页面转换成简体字的，网上搜索啦下，还真找到一个好用的工具：zh-autoconvert ，在zh-autoconvert [Debian 包介绍]有它的介绍，这个工具是Debian中文用户于广辉先生写的自动中文辨识转码程序包，提供两个应用程序autogb 和 autob5，在Debian下很好用apt-get install zh-autoconvert 就可以安装好。两个工具使用方法也很简单
> 标准的命令行为
>  autogb/autob5 [选项] <输入流 >输出流
>    选项有
>     -i 输入流的编码
>     --input 输入流的编码
> 
>     -o 输出流的编码
>     --output 输出流的编码
> 
> 这样就可以同时处理繁简体和编码问题啦。
> 此外 可选的编码有 gb, big5, hz, uni, utf7 或者 utf8
> 
> 实际上一般简单使用可以采用如下的方法
>   autogb < 输入流（文件）   >输出流（文件）
>         把输入流中的繁体字转换成简体字
> 
>   autob5 < 输入流（文件）   >输出流（文件）
>         把输入流中的简体字转换成繁体字
> 
> 不过这个转换仅仅是字的转换，对于原来繁简体字中存在的多对一的情况没有特别处理，都是选用的常用字，所以一般繁转简问题不大，简转繁可能存在生造词（别字）情况，这点要注意。
> 
> 另外找到了一个windows下的工具ConvertZ这个工具可以实现比较丰富的转换，特别还能定制一些字词的转换对应关系，也算是很方便的工具啦。
> 
> 参考： http://www.diybl.com/course/6_system/linux/Linuxjs/20090312/160797.html


# hard way is the easy way 难路才是易路

<http://learncodethehardway.org/>
学编程，就要多谢代码少空谈。


# mit-scheme的edwin编辑器配置文件

~/.edwin中写

	((ref-command set-font) "9x15")
	((ref-command set-frame-size) 163 40)

<http://superuser.com/questions/207938/how-to-change-default-font-in-mit-scheme-edwin>
<http://mumble.net/~campbell/scheme/edwin-init.scm>
<http://courses.csail.mit.edu/6.844/spring05-6844/handouts/edwin.ini

# scheme的两个好网站

<http://www.schemers.org/>
<http://community.schemewiki.org/>

# sicp中提到的drScheme这个scheme的程序和实现 现在改名叫做Racket了

gnu/linux发行版中应该有这个程序包
它的网站是
<http://racket-lang.org/>

# sicp的练习答案 在schemewiki org上

<http://community.schemewiki.org/?sicp-solutions>
直接搜索sicp还可以看到不少其它人的答案。

# unix高人的站点

<http://www.nico.schottelius.org/docs/>
发现他是因为drupal的nginx组上有人推荐一个服务器配置管理软件
<http://www.nico.schottelius.org/software/cconf/>



# 介绍ptyhon NLTK 的书

<http://www.nltk.org/book>
natrual language toolkit
本书在github上的库
<https://github.com/nltk/nltk_book>



# 学习scheme

<http://www.cs.rpi.edu/academics/courses/fall05/ai/scheme/>
里面有很多在线书链接

# 在根据sicp这本书学习编程 用到mit-scheme

启动edwin的方法是

	To use Edwin, start Scheme with the following command-line options:

	mit-scheme --edit

参考： <http://www.gnu.org/software/mit-scheme/documentation/mit-scheme-user/Starting-Edwin.html#Starting-Edwin>



# 在线阅读 用python编写小游戏 有pdf下载

<http://inventwithpython.com/chapters/>

# 自然语言处理NPL中切分句子的程序splitta

<http://code.google.com/p/splitta/>

> splitta
> 
> statistical sentence boundary detection
> 
> ncludes proper tokenization and models for very high accuracy sentence boundary detection (English only for now). The models are trained from Wall Street Journal news combined with the Brown Corpus which is intended to be widely representative of written English. Error rates on test news data are near 0.25%.
> 
> This is the source code for the paper "Sentence Boundary Detection and the Problem with the U.S." appearing at NAACL 2009.
> 
> Code written in Python.



# 再次对比几个blog generator

因该是会用jekyll。因为用的人多。而且github提供服务。
http://www.steve.org.uk/Software/chronicle/
https://github.com/mojombo/jekyll
https://github.com/hugoduncan/cl-blog-generator/tree/6ad43cfb66bcf61b2d7ee9469e8bbf89ebfd428d/bin
https://github.com/vpetkov/StaticBlogGenerator
https://github.com/rschultheis/DailyDoseBlogGenerator

# 几计算机科学教学的在线书 主要是scheme相关

How to Design Programs, Second Edition
<http://www.ccs.neu.edu/home/matthias/HtDP2e/>

# 对比各种语言如何实现各种任务


> Rosetta Code is a programming chrestomathy site. The idea is to present solutions to the same task in as many different languages as possible, to demonstrate how languages are similar and different, and to aid a person with a grounding in one approach to a problem in learning another. Rosetta Code currently has 578 tasks, 84 draft tasks, and is aware of 421 languages, though we do not (and cannot) have solutions to every task in every language.


<http://rosettacode.org/wiki/Rosetta_Code>

# 可以按照上下文切割文件的程序csplit使用方法

csplit的c应该是context的意思。

该命令的man说的不是很清楚。没有例子。

info csplit 给出了例子更容易理解。

我在网上搜了一下，有几个页面有更多例子：

<http://baike.baidu.com/view/2129343.html?fromTaglist>
<http://study.chyangwa.com/IT/AIX/aixcmds1/csplit.htm>


# 某人写的静态相册生成程序的比较

<http://www.nico.schottelius.org/docs/static-image-gallery-generator-comparison/>

比较看好gthumb和llgal。

但最后用了lazygal。



# 30个好用的bash命令别名
<http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html>

说实话，我自己并没有怎么使用。虽然我看到类似文章都会浏览和收集一下。

我的目标还是尽量少用电脑。哈哈！

# Host a Static Website on Amazon S3
<http://www.layouts-the.me/2011/03/16/hosting-on-amazon-s3/>


# PHP stands for PHP Hates Programmers

It could have been a DSL for web development.  Instead it became a general lanugage which people 'only' use for web development.

最近项目要用PHP。当然不是个人选择！！！

我觉得这个名字很合适！


# Redis 命令参考 中文完整版本
<http://redis.readthedocs.org/en/latest/index.html>


# The Common Lisp Cookbook

> This is a collaborative project that aims to provide for Common Lisp something similar to the Perl Cookbook published by O'Reilly. More details about what it is and what it isn't can be found in this thread from comp.lang.lisp.
> 
> The credit for finally giving birth to the project probably goes to "dj_special_ed" who posted this message to comp.lang.lisp.
> <http://cl-cookbook.sourceforge.net/>

# bash下的rev命令是把一行文字的顺序反过来输出
  
    $ echo -n "the answer is" |rev
    si rewsna eht

> NAME
>      rev — reverse lines of a file or files
> 
> SYNOPSIS
>      rev [-V] [-h] [file ...]
> 
> DESCRIPTION
>      The rev utility copies the specified files
>      to standard output, reversing the order of
>      characters in every line.  If no files are
>      specified, standard input is read.


# convert latex embed in html for web display by using mathjax a javascript lib

<http://www.mathjax.org/>

others to be noted

http://xyne.archlinux.ca/projects/tex2png/

http://blog.pugwoo.com/2010/02/16/latex-to-png.html

http://stackoverflow.com/questions/9558436/rendering-latex-to-an-image

https://github.com/rennhak/LaTeX-Mathematics-to-Image-Converter--LaMatIC-

https://github.com/vikhyat/latex-to-unicode

# csplit中如何按规律切分大文件

> Firt of all, you use a slash inside the regexp. To be safe you might want to quote it so that it won't be confused with the end delimiter: /<\/listing>/.
> 
> owver, in this case it would be more convenient to split on the start tag rather than end tag, since each chunk contains up to but not including the matching line. So you might try something like this:
> 
> spit myfile.xml '/^<listing>/' '{*}'
> 
> se the beginning-of-line anchor ^ there to make sure it only splits before lines where the start tag appears at the beginning of the l
> 
> tt://stackoverflow.com/questions/2830748/how-to-use-linux-csplit-to-chop-up-massive-xml-file
> 
> ancsplit 发现 {*} 的意思了
> {n}
> 
>   Repeat argument n times. May follow any of the preceding arguments. Files will split at instances of expr or in blocks of num lines. If * is given instead of n, repeat argument until input is exhausted.

# dive into python 这个书的新网站地址
<http://www.diveintopython.net/toc/index.html>


#  gem server 命令： 在浏览器查看本机都安装了什么gems。并可以直接查看文档

   gem server

然后去 http://0.0.0.0:8808/ 惊喜啊！很喜欢那个看文档的功能。方便。


# gem安装pg失败的原因可能是你没有安装libpq-dev

gem install pg 安装失败，根据错误信息看看到
    
	checking for libpq-fe.h... no
    Can't find the 'libpq-fe.h header

搜索一下libqb-fe.h。

找到答案：

<http://stackoverflow.com/questions/6040583/unable-to-install-pg-gem-on-ubuntu>

先安装 sudo apt-get install libpq-dev 再 gem install pg 

# github上有另一个sinatra-wiki的fork，最近2个月还更新过
<https://github.com/morganp/sinatra_wiki>

# git命令： 设定git写日志用哪个编辑器

      git config --global core.editor "emacs"

我这里选用emacs。自己替换成你喜欢的。

# git恢复到之前的一个版本


## 全库回到之前状态
> git rm -r .
> git checkout HEAD~3 .
> git commit
> After the commit, files in the new HEAD will be the same as they were in the revision HEAD~3.
<http://stackoverflow.com/questions/3380805/git-checkout-old-commit-and-make-it-a-new-commit>

英文逗号点是需要的。HEAD后面是英文撇号 ~ 。

## 单个文件

> You can quickly review the changes made to a file using the diff command:
> 
> git diff <commit hash> <filename>
> Then to revert a specific file to that commit use the reset command:
> 
> git reset <commit hash> <filename>
> You may need to use the --hard option if you have local modifications.
> 
> A good workflow for managaging waypoints is to use tags to cleanly mark points in your timeline. I can't quite understand your last sentence but what you may want is diverge a branch from a previous point in time. To do this, use the handy checkout command:
> 
> git checkout <commit hash>
> git checkout -b <new branch name>
> You can then rebase that against your mainline when you are ready to merge those changes:
> 
> git checkout <my branch>
> git rebase master
> git checkout master
> git merge <my branch>

<http://stackoverflow.com/questions/373812/rollback-file-to-much-earlier-version>

# grep Text Between Two Words in linux
> The grep command is not suitable for this kind of work. I suggest that you use sed command. The syntax is:
>      sed -n "/START-WORD-HERE/,/END-WORD-HERE/p" input
>      sed -n "/START-WORD-HERE/,/END-WORD-HERE/p" input > output
h<ttp://www.cyberciti.biz/faq/howto-grep-text-between-two-words-in-unix-linux/>

# install lazygal from source

## run setup test

    ./setup test

## lack dependency, so install python image module

	sudo apt-get install python-imaging

## run setup test again, still lack dependency

install it

	sudo apt-get install python-pyexiv2

## run setup test, still has a minor fail

      FAIL: test_lens (lazygaltest.test_metadata.TestFileMetadata)
      ----------------------------------------------------------------------
      Traceback (most recent call last):
        File "/home/404/lazygal-0.7.4/lazygaltest/test_metadata.py", line 150, in test_lens
	    self.assertEqual(im_md.get_lens_name(), 'smc PENTAX-DA 18-55mm F3.5-5.6 AL WR')
	    AssertionError: '7 218 0 0' != 'smc PENTAX-DA 18-55mm F3.5-5.6 AL WR'
ignore it!

## run setup build

    ./setup.py build

some mistake about msgfmt not found.  Search it, it's part of gettext.  Install gettext.

re-reun setup build.  Everything is fine.

## install it

    sudo ./setup.py install

done!

## run it

fatal error: unsupported locale

## google a lot

comment out the lines in /etc/default/locale
	
	#LANG="zh_CN.UTF-8"
	#LANGUAGE="zh_CN:zh"	

## done!


# jekyll中使用其它theme，除了在_layout中修改theme名字还要修改引用theme的路径

就是这行。defaul post page  .html 都需要修改。否则生成站点的theme目录下没有那新建立的目录，还是之前那个目录，因为这里引用的是之前的目录啊。
{% include themes/404twitter/page.html %}

# john hughes book why functional programming matters
<http://www.google.com.hk/search?sourceid=chrome&client=ubuntu&channel=cs&ie=UTF-8&q=john+hughes+why+functional+programming+matters>

# kramdown --help 查看命令行中kramdown如何设定参数

      kramdown --help

我要用的是 kramdown --no-auto-ids file.txt >file.html

# luo chen - author of Mou and more
<http://chenluois.com/>
很不错的。应该是内地的。软件很漂亮。mou应该很实用。当我买了mac后。

# mass convert file to utf-8 encoding on windows with powershell
<http://www.ehow.com/how_8456833_convert-file-utf8.html>


# php simple html dom parser
<http://sourceforge.net/projects/simplehtmldom/>

# python入门好书 python3 course
http://www.python-course.eu/python3_course.php

# ruhoh rocks

ruhoh titleize doesn't work well with languages other than English?

       title	     	    	 filename			score
       nouvel année	         nouvel-anne.md			good
       sérieux è_é	   	 srieux-_.md			bad
       안녕하세요	    .md				wrong, in fact there isn't a file .md in _posts
       三只熊		    .md				wrongin fact there isn't a file .md in _posts
       غة يابانية	    .md				wrongin fact there isn't a file .md in _posts
       
My file system can handle all these files.  Jekyll can render all of them correctly.

find . -type f 
./30/غةيابانية/index.html
./31/绿色/index.html
./31/sérieux_è_é/index.html
./31/안녕하세요/index.html


# vim中去除dos/windows的换行符号

	%s/\r\(\n\)/\1/g

之后压缩一下多余的空行： cat -s 

# vim可以直接编辑.gz中的文件并保存
	$ vim some-archive.tar.gz

> If you vim a compressed file it will list all archive content, then you can pickup any of them for editing and saving. There you have the modified archive without any extra step. It supports many file types such as tar.gz, tgz, zip, etc.

<http://www.commandlinefu.com/commands/view/10633/edit-a-file-inside-a-compressed-archive-without-extracting-it>

# 用redis实现提醒用户你的朋友也在线
<http://www.lukemelia.com/blog/archives/2010/01/17/redis-in-practice-whos-online/>


# 用scan方法提取rss每个item对应的多个category

	s.scan(/<category>([^<]+)<\/category>/).join(' ')

## 用 rss library 的 item.category 只能读出第一条记录
如果该item有多个，后面的就被忽略了

# 用sed在文件的头和尾添加一些字符

> m the command line use 
> (Note that these must be completed on separate lines.)
> This will insert on the first line of the file. 
> 
> sed '1i\
> your text goes here' file_name > new_filename
> 
> 
> This will append on the last line of the file. 
> sed '$a\
> your text goes here' file_name > new_filename

<http://www.unix.com/shell-programming-scripting/6744-sed-insert-text-top-file.html>


## 注意： sed添加行的内容不能换行！！

因为sed是行编辑器的原因？因此你不能用

      sed '$a\
      第一行
      第二行' file > newfile

会报错且不能执行。需要手写换行符号 \n。

      sed '$a\
	  第一行\n第二行' file > newfile

# 用sinatra的stream功能做个聊天室
<https://gist.github.com/1476463>

<script src="https://gist.github.com/1476463.js?file=chat.rb"></script>

	get '/stream', provides: 'text/event-stream' do
	  stream :keep_open do |out|
	    EventMachine::PeriodicTimer.new(20) { out << "data: \n\n" } # added
	    settings.connections << out
	    puts settings.connections.count # added
	    out.callback { puts 'closed'; settings.connections.delete(out) } # modified
	  end
	end

	 var es = new EventSource('/stream');
	  es.onmessage = function(e) { if (e.data != '') $('#chat').append(e.data + "\n") }; // modified


# 一些2009年的redis应用
A Collection Of Redis Use Cases
<http://www.paperplanes.de/2010/2/16/a_collection_of_redis_use_cases.html>
<http://www.paperplanes.de/tags/redis.html>

# 下载Foundations of Programming Ebook
<http://codebetter.com/karlseguin/2008/06/25/foundations-of-programming-ebook/>
该书作者的网站：  <http://openmymind.net>


# 取消git库中所有为登入的修改

        git checkout -- .

两个横线后面跟一个空格跟一个点
参考： < http://stackoverflow.com/questions/52704/how-do-you-discard-unstaged-changes-in-git>

# 学习google课程 成为gogole培训师
<http://edutraining.googleapps.com/>
<http://www.google.com/apps/intl/en/edu/certification_details.html>

# 学习mongodb的好站点
<http://openmymind.net/2011/3/28/The-Little-MongoDB-Book/>
<http://mongly.com/>
<https://github.com/karlseguin/mongly>

# 使用shotgun协助开发：它会自动重新载入代码

> Shotgun
> This is an automatic reloading version of the rackup command that’s shipped with Rack. It can be used as an alternative to the complex reloading logic provided by web frameworks or in environments that don’t support application reloading.
> 
> shotgun --server=thin --port=6000 config.ru


# 安装sinatra-contrib的正确方法

> Installation
> All Sinatra::Contrib extensions are bundled in the sinatra-contrib gem.
> 
>       gem install sinatra-contrib
> 
> <http://www.sinatrarb.com/contrib/>

# 受到sinatra框架启发的各种语言类似框架
<http://en.wikipedia.org/wiki/Sinatra_%28software%29#Sinatra_inspired_frameworks>

值得注意

php下
http://www.slimframework.com/

python下
<http://bottlepy.org/docs/dev/index.html>

haskell下
<https://github.com/xich/scotty>

lua下
https://github.com/nrk/mercury

上面的都看了一下。从简洁程度上看，同样行数代码表达的意思多，而且容易看懂这两方面，还是sinatra好。

# 使用ssh时在config中或者命令行里指定使用哪个私钥文件

> ssh -i /backup/home/user/.ssh/id_dsa user@unixserver1.nixcraft.com
> ~/.ssh/config SSH Client Configuration
> 
> You can set identity file in ~/.ssh/config as follows:
> vi ~/.ssh/config
> 
> Add both host names and their identity file as follows:
> 
> Host server1.nixcraft.com
>  IdentityFile ~/backups/.ssh/id_dsa
> Host server2.nixcraft.com
>  IdentityFile /backup/home/userName/.ssh/id_rsa
> 
> 参考
> <http://www.cyberciti.biz/faq/force-ssh-client-to-use-given-private-key-identity-file/>

# 想使用 Hash.from_xml 方法需要 require active_support all

	irb(main):016:0> xml = File.new('xml.txt')
	=> #<File:xml.txt>
	irb(main):017:0> Hash.from_xml xml
	NoMethodError: undefined method `from_xml' for Hash:Class
		       from (irb):17
		       from /usr/bin/irb:12:in `<main>'
	irb(main):018:0> require 'active_support/all'
	=> true

# 安装了rais，准备跑几个程序看看能否直接使用

看看spree到底怎么样。
https://github.com/spree/spree
http://spreecommerce.com/tour

# 描述了rest架构的那篇著名论文全文

> UNIVERSITY OF CALIFORNIA, IRVINE
> 
> Architectural Styles and
> the Design of Network-based Software Architectures
> 
> DISSERTATION
> 
> submitted in partial satisfaction of the requirements for the degree of
> 
> DOCTOR OF PHILOSOPHY
> 
> in Information and Computer Science
> 
> by Roy Thomas Fielding
> 
> 2000
> 
> Dissertation Committee:
> Professor Richard N. Taylor, Chair
> Professor Mark S. Ackerman
> Professor David S. Rosenblum

souce: <http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm>

# 所有远端gem源中的软件

        gem search feedzirra --remote


# 开始关注redis
因为想在项目中使用
<http://redis.io/>

书
http://openmymind.net/2012/1/23/The-Little-Redis-Book/

其它
http://blog.nosqlfan.com/

Redis资料汇总 
http://blog.nosqlfan.com/html/1282.html
http://blog.nosqlfan.com/html/3537.html

浅谈Redis数据库的键值设计 http://blog.nosqlfan.com/html/3033.html?ref=rediszt

文章中用户登录系统、TAG系统的例子在实践中可直接使用。

http://www.rediscookbook.org/
http://blog.nosqlfan.com/html/129.html?ref=rediszt

mongodb资料
http://blog.nosqlfan.com/html/3548.html

http://redis.readthedocs.org/en/latest/index.html
http://howtonode.org/
http://blog.nosqlfan.com/html/3202.html?ref=rediszt

Redis之七种武器 http://blog.nosqlfan.com/html/2942.html?ref=rediszt


# 下载几本scheme/lisp的书；amazon上没有这些书的kindle版本

the little schemer
http://ishare.iask.sina.com.cn/f/23754281.html

land of lisp
http://ishare.iask.sina.com.cn/f/23861951.html
这本书确实有kindle版本。我小农意识图便宜先下着看了


# 计算机中的xor是什么意思

>   0011   (3)
> + 0011   (3)
> ------------
>   
> You might not see the pattern, but look at the above closely and consider it with respect to what we've learned about logic gates. On a per-column basis, we have two inputs and a single output. Forget about the carryover for a second. When the two inputs are 0, the output is 0. When either input is 1, the output is 1. When both inputs are 1, the output is 0. Remind you of anything? That's exactly how an xor gate behaves. What about that carry bit? Well, the only time we carry 1 is when both inputs are 1. That's an and gate.
> 
> source: <http://openmymind.net/2012/5/7/Lets-Increment-I-Logic-Gate-Style>
# 静态相册生成程序lazygal的使用心得


## 安装
源码或者apt
[项目主页](http://sousmonlit.dyndns.org/~niol/playa/oss/projects/lazygal/)

## 我现在使用的命令行参数

      lazygal -o output-folder/ photo-folder/ --orig-symlink -s smal=800x600 --clean-destination 

-o 是输出文件夹，就是静态相册的目录，后面跟的是原始照片存放的目录
--orig-symlink 不复制原始照片文件，因为很大的。我们生成静态相册给别人看，让他们看缩略图就好了
-s small=800x600 设定我需要的生成所路图的大小。 如果不加这个参数，默认lazygal会生成两组缩略图，一个是small为80x600一个是mediu为1024x768。我个人认为没有意义，我只是给朋友看一个比较大的图片就好了。这样节省时间和空间
--clean-destination 如果重新生成相册，那么完成后删除之前output-folder已经没有用的文件。这个似乎不太工作

## 其它疑问
lazygal写道如果在 ~/.lazygal/theme下放自己的目录，就可以使用。比如我复制源码中的theme文件夹到那个目录，然后复制default目录到404文件夹，修改后就可以调用新主题

     lazygal -o output/ photo/ -t 404

这样就会运用文件夹名为404的theme。可我修改后，css乱了。jquery也不起作用了，于是作罢，先不细研究

lazygal在如何设置生成缩略图参数，如何指定生成几组缩略图方面的文档不详细。我是碰巧试出来的。因为我不希望有两组缩略图。但有的朋友希望生成多组说不定。

lazygal支持生成相册打包zip提供下载，具体参数看man。

# 可以生成静态网站的程序
<http://iwantmyname.com/blog/2011/02/list-static-website-generators.html>

# 计算机科学理论方面的书，可在线阅读，可amazon上购买

购买的价格是很贵的。但作者给了免费网上阅读的途径。

<http://www.amazon.com/Books-available-for-free-download/lm/1MZYM25XRWG5V>

	
> 1.  Concurrency Control and Recovery in Database Systems by Philip A. Bernstein
> The list author says:
>  	 "http://research.microsoft.com/pubs/ccontrol/"
> Used & New from: $2.12
>     (2 customer reviews)	
> 	
> 2.  Structure and Interpretation of Computer Programs (MIT Electrical Engineering and Computer Science) by Harold Abelson
> The list author says:
>  	 "http://mitpress.mit.edu/sicp/"
> Used & New from: $3.40
> 3 customer discussions	
> 	
> 3.  Database Design (Mcgraw Hill Computer Science Series) by Gio Wiederhold
> The list author says:
>  	 "http://www-db.stanford.edu/pub/gio/dbd/acm/toc.html"
> Used & New from: $0.01
> 
> 	
> 4.  Information Theory, Inference and Learning Algorithms by David J. C. MacKay
> The list author says:
>  	 "http://www.inference.phy.cam.ac.uk/mackay/itprnn/book.html"
> $48.00   Used & New from: $39.86
>     (15 customer reviews)	
> 
> 	
> 5.  Handbook of Applied Cryptography (Discrete Mathematics and Its Applications) by Alfred J. Menezes
> The list author says:
>  	 "http://www.cacr.math.uwaterloo.ca/hac/"
> $71.91   Used & New from: $37.34
>     (17 customer reviews)	
> 
> 	
> 6.  Algorithms and Complexity by Herbert S. Wilf
> The list author says:
>  	 "http://www.cis.upenn.edu/~wilf/AlgComp3.html"
> $41.46   Used & New from: $41.00
>     (1 customer review)	
> 
> 	
> 7.  How to Design Programs: An Introduction to Programming and Computing by Matthias Felleisen
> The list author says:
>  	 "http://www.htdp.org/"
> $66.66   Used & New from: $24.97
>     (14 customer reviews) | 2 customer discussions	
> 
> 	
> 8.  Rethinking Public Key Infrastructures and Digital Certificates: Building in Privacy by Stefan A. Brands
> The list author says:
>  	 "http://www.credentica.com/the_mit_pressbook.php"
> $38.89   Used & New from: $3.37
>     (5 customer reviews)	
> 
> 	
> 9.  Libro del estilo ''El Pais'' (2002) (Spanish Edition) by Alex Grijelmo
> The list author says:
>  	 "http://www.estudiantes.elpais.es/EPE2002/libroestilo/inicio.htm"
> $34.99   Used & New from: $29.20
>     (2 customer reviews)	
> 
> 	
> 10.  Libro de Estilo (Spanish Edition) by El Pais
> The list author says:
>  	 "http://www.estudiantes.elpais.es/EPE2002/libroestilo/inicio.htm"
> Used & New from: $8.00
> 
> 	
> 11.  Price Theory by David D. Friedman
> The list author says:
>  	 "http://www.daviddfriedman.com/Academic/Price_Theory/PThy_ToC.html"
> Used & New from: $19.96
>     (1 customer review)	
> 	
> 12.  Structure and Interpretation of Classical Mechanics by Gerald Jay Sussman
> The list author says:
>  	 "http://mitpress.mit.edu/SICM/"
> $56.42   Used & New from: $34.07
>     (5 customer reviews)	
> 
> 	
> 13.  The TeXbook by Donald E. Knuth
> The list author says:
>  	 "http://www.ctan.org/tex-archive/systems/knuth/tex/"
> $33.74   Used & New from: $3.79
>     (10 customer reviews)	
> 
> 	
> 14.  The METAFONTbook by Donald E. Knuth
> The list author says:
>  	 "http://www.ctan.org/tex-archive/systems/knuth/mf/"
> $40.04   Used & New from: $7.50
>     (2 customer reviews)	
> 
> 	
> 15.  Probability and Algorithms by Panel on Probability and Algorithms
> The list author says:
>  	 "http://www.nap.edu/books/0309047765/html/"
> $38.51   Used & New from: $13.99
> 
> 
> 	
> 16.  Compliers and Compiler Generators: An Introduction With C++ (Itcp-UK Computer Science Series) by Patrick D. Terry
> The list author says:
>  	 "http://scifac.ru.ac.za/compilers/"
> Used & New from: $48.49
> 
> 	
> 17.  An Introduction to the Theory of Computation (Principles of Computer Science Series) by Eitan Gurari
> The list author says:
>  	 "http://www.cse.ohio-state.edu/~gurari/theory-bk/theory-bk.html"
> Used & New from: $4.75
> 
> 	
> 18.  PVM: Parallel Virtual Machine: A Users' Guide and Tutorial for Network Parallel Computing (Scientific and Engineering Computation) by Jack Dongarra
> The list author says:
>  	 "http://www.netlib.org/pvm3/book/pvm-book.html"
> $38.00   Used & New from: $0.07
>     (2 customer reviews)	
> 
> 	
> 19.  Communicating Sequential Processes (Prentice Hall International Series in Computing Science) by C. A. R. Hoare
> The list author says:
>  	 "http://www.usingcsp.com/"
> Used & New from: $45.00
>     (1 customer review)


# sicp 的 epub 版本

<https://github.com/ieure/sicp>
适合在ipad上阅读。

它是把所有公式都单独写成一个.tex文件然后然后生成到书的images文件夹下，然后在正文里html链接到图片。这到也是一种制作含有公式电子书的方式。

# teach kid programming
<http://www.crunchzilla.com/code-monster>
<http://scratch.mit.edu/>
# to be or not to be, from shakespear to sinatra

      To be or not to be.
      -- Shakespeare
      To do is to be.
      -- Nietzsche
      To be is to do.
      -- Sartre
      Do be do be do.
      -- Sinatra

# 命令行下的时间记录工具

搜索 command line time tracker

ruby实现的
<https://github.com/samg/timetrap>

python实现的
<http://adeel.github.com/timed/>
<https://bitbucket.org/trevor/timebook/wiki/Home>
<http://code.google.com/p/punch-time-tracking/>

todo
<https://github.com/ginatrapani/todo.txt-cli/wiki>

links to similiar tools
<http://www.thelinuxdaily.com/2010/11/time-tracking-in-the-command-line-python-and-shell-scripts/>
<http://tim.thechases.com/bvi/console.html>
