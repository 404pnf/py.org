1. toc
{:toc #toc}

# Haskell趣学指南 就是 learn you a haskell for good 这本书中文全文在线阅读

中文的
<http://fleurer-lee.com/lyah/>
英文的
<http://learnyouahaskell.com/chapters>


2013-06-21

# little schemer

## mit-scheme commandline history and editing

> Install the readline wrapper:
> 
> brew install rlwrap
> 
> Once installed, rlwrap scheme will give you persistent history, paren matching, and tab completion. I typically use rlwrap with the following arguments:
> 
> -r Put all words seen on in- and output on the completion list.
> 
> -c Complete filenames
> 
> -f Specify a list of words to use for tab completion. I'm using an abridged list of bindings from the MIT Scheme Reference Manual. Rather than republish the list here, you can find it in this gist. I have this file stored in "$HOME"/scheme_completion.txt
> 
> rlwrap -r -c -f "$HOME"/scheme_completion.txt scheme
> 
> 1 ]=> (flo:a <tab tab>
> flo:abs    flo:acos   flo:asin   flo:atan   flo:atan2  
> 1 ]=> (flo:abs -42.0)
> 
> ;Value: 42.
> <http://stackoverflow.com/questions/11908746/mit-scheme-repl-with-command-line-history-and-tab-completion>

## run the scheme code in browser
<http://www.crockford.com/javascript/scheme.html>

## next book to learn
<http://www.scheme.com/tspl4/>



2013-06-21


# How to Build a Shortlink App with Ruby and Redis
<http://net.tutsplus.com/tutorials/ruby/how-to-build-a-shortlink-app-with-ruby-and-redis/>

最后这段代码有问题

    get '/:shortcode' do
      @url = redis.get "links:#{params[:shortcode]}"
      # redirect @url || '/'
      # 上面代码只是返回相对路径 http://localhost/@url
      # redirect http://@url || '/'
      # || 是逻辑 or 的意思 
      # 如果没有 @url 就返回到根目录
    end
	
	
	
	


2013-06-21

# taobao上的rubygem源
Rubygems 镜像 - 淘宝网

这是一个 Rubygems 镜像，由官方辅助支持搭建的, 实时同步。
为什么有这个？

由于国内网络原因（你懂的），导致 rubygems.org 存放在 Amazon S3 上面的资源文件间歇性连接失败。所以你会与遇到 gem install *** 或 bundle install 的时候半天没有响应，具体可以用 gem install rails -V 来查看执行过程。

如何使用？

gem source -r http://rubygems.org/
gem source -a http://ruby.taobao.org
如果你使用 Bundler 请修改 Gemfile:
source 'http://ruby.taobao.org'
<http://ruby.taobao.org/>
gem source -a http://ruby.taobao.org



2013-06-21

# ted2srt is a tool that convert a TED talk web page into a SRT subtitle text 
ted2srt is a tool that convert a TED talk web page into a SRT subtitle text 

    $ ted2srt http://www.ted.com/talks/ken_robinson_says_schools_kill_creativity.html > subtitle.srt
    
	$ ted2srt http://www.ted.com/talks/lang/es/ken_robinson_says_schools_kill_creativity.html
	# same video, spanish transcript, 
	# NOTE in url there is language code /lang/es
	
	$ ted2srt saved_ted_page.html

<https://github.com/noric/ted2srt>



2013-06-21

# The Hitchhiker’s Guide to Python
<https://python-guide.readthedocs.org/en/latest/>



2013-06-21

# png瘦身
<http://pngquant.org/>
<http://pngmini.com/>
<http://imageoptim.com/>
<http://pnggauntlet.com/>
<http://perishablepress.com/png-image-optimization/>
<http://tinypng.org/>
<http://www.smashingmagazine.com/2009/07/15/clever-png-optimization-techniques/>

search png optimization

# 学习lisp和scheme的中文在线图书

> ANSI Common Lisp 中文翻譯版 (Chinese Translation of ANSI Common Lisp)
> <http://acl.readthedocs.org/en/latest/>
> 
> 这个文档的目标是成为中文化的、完整的《计算机程序的构造和解释》一书的解题集。
> 
> 这个解题集的特色是：
> 
> 对于每道习题，除了习题答案之外，还给出习题的讲解和相关资料(如果有的话)；
> 使用 MIT Scheme 作为编程环境，完全避免了代码不兼容的问题；
> 所有代码都经过测试，确保准确性。
> 
> lsdf -exitexit<http://sicp.readthedocs.org/en/latest/># pro git这本书的中文版
<http://ikandou.com/book/1502?sortby=>



2013-06-21

# programmingprsxis上关于scheme的参考
<http://programmingpraxis.com/contents/standard-prelude/>


2013-06-21

# Project Euler 用编程解决有趣的数学问题

> About Project Euler
> 
> What is Project Euler?
> Project Euler is a series of challenging mathematical/computer programming problems that will require more than just mathematical insights to solve. Although mathematics will help you arrive at elegant and efficient methods, the use of a computer and programming skills will be required to solve most problems.
> 
> The motivation for starting Project Euler, and its continuation, is to provide a platform for the inquiring mind to delve into unfamiliar areas and learn new concepts in a fun and recreational context.
> 
> <http://projecteuler.net/problems>

on wikiepdia
<http://en.wikipedia.org/wiki/Project_Euler>



2013-06-21

# python chanllenge 详细解答
用python解决的。
非常棒。

如果一道题卡了我很久很久，我就会去看一下。：）

<http://garethrees.org/2007/05/07/python-challenge/>
<http://holger.thoelking.name/python-challenge/all>


2013-06-21

# python code examples 通过读代码学写python

这个回答有不少链接
<http://stackoverflow.com/questions/918/how-to-learn-python-good-example-code>

Code Like a Pythonista: Idiomatic Python
<http://python.net/~goodger/projects/pycon/2007/idiomatic/handout.html>

Solving Every Sudoku Puzzle
by Peter Norvig
<http://norvig.com/sudoku.html>

How to Write a Spelling Corrector
<http://norvig.com/spell-correct.html>

Natural Language Corpus Data: Beautiful Data
<http://norvig.com/ngrams/>

python challenge
<http://www.pythonchallenge.com/>

Generator Tricks for Systems Programmers - Version 2.0
<http://www.dabeaz.com/generators-uk/index.html>

book: Python Essential Reference (3rd Edition)python standard library
<http://docs.python.org/library/index.html>

Style Guide for Python Code
<http://www.python.org/dev/peps/pep-0008/>

python exmaples package

      sudo apt-get install python3.2-examples
	  
装在 /usr/share/doc/python3.2-examples# unicode的减号在latex数学公式中会报错 它的html hex编码是u2212
Unicode Character 'MINUS SIGN' (U+2212)
坑爹啊。视觉上这个分辨不出来这个减号和ascii的减号区别。

> &#x2212;HTML Entity (hex)
> 
> Unicode Data
> MINUS SIGN
> Mathematical Operators
> Symbol, Math [Sm]
> 0
> European Number Separator [ES]
> N
> MINUS SIGN
> hyphen-minus U+002D
> heavy minus sign U+2796
> Unicode 1.1.0 (June, 1993)
> Encodings
> &#8722;
> &#x2212;HTML Entity (hex)HTML Entity (decimal)VersionSee AlsoIndex entriesMirrorBIDICombineCategoryBlockName
> <http://www.fileformat.info/info/unicode/char/2212/index.htm>

我的情况是我有pdf转为xml，我再xml预处理为mardkown（用正则不是任何xml库因为我不会），markdown中排版数学公式！有些数学公式因为unicode中有对应表示，就用了unicode字符，这时我排的时候，认为减号就是减号，没有一个个修改，总是报错啊！# 在irb中建立到active_record数据库的连接
ActiveRecord Without Rails
<http://blog.aizatto.com/2007/05/21/activerecord-without-rails/>
ActiveRecord Migrations Without Rails
<http://blog.aizatto.com/2007/05/27/activerecord-migrations-without-rails/>

> require 'active_record'
> 
> ActiveRecord::Base.establish_connection(
> :adapter  => "mysql",
> :database => "xxx_production",
> :username => 'root',
> :password => 'xxx',
> :host => 'localhost'
> )
> 		  
> class Order < ActiveRecord::Base
> end
> 		  
> Order.all.each do |o|
> http://stackoverflow.com/questions/3661546/how-to-require-active-record-working-outside-of-rails


2013-06-21

# python实现的markdown桌面编辑器
markdowner : a markdown editor
markdowner project from jezra.net
Markdowner is a simple markdown editor that will allow a user to write markdown text and view the parsed HTML output.
<http://www.jezra.net/projects/markdowner>



2013-06-21

# redis over http
<https://github.com/ctro/redweb># apache use the wrong ip address for servername

     Could not determine the server's fully qualified domain name, using 127.0.0.1 for ServerName
	 
有时候apache启动特别慢，然后它找不到servername就用一个ip地址代替，但那个ip地址明显不是我机器的，是外网的一台机器。我感觉是因为在查找机器ip托慢了启动。

我检查自己的 /etc/hostname 和 /etc/hosts 发现我的hostname内容是 zhujiming 也就是我的主机名。但 /etc/hosts中并没有对应的记录。于是在/etc/hosts中增加一行

      127.0.0.1   zhujiming 
	  或者 129.0.0.66 zhujiming 反正给一个你实际的内网地址

这样启动就很快了。

参考： <http://wiki.apache.org/httpd/CouldNotDetermineServerName>


2013-06-21

# rlwrap 让scheme,clojure,clisp在repl中支持命令行编辑

这个包叫做 rlwrap: 也就是 Read Line WRAP。

gnu/linux下有时安装racket, mit-scheme，clisp，clojure等后在repl中无法编辑命令行，比如不能按箭头移动光标和调出刚刚输入的命令，不能用ctrl-a等快捷键。这是readline没有正常工作的表现？

需要rlwrap这个包解决。安装后，在调用repl前加上rlwrap。

      > rlwrap racket

mac osx 下也是这样解决。 brew install rlwrap。

参考： <http://stackoverflow.com/questions/11908746/mit-scheme-repl-with-command-line-history-and-tab-completion>



2013-06-21

# Rocco is  a quick-and-dirty,  literate-programming-style documentation generator for Ruby
coffeescript版本
<http://jashkenas.github.com/docco/>
<https://github.com/jashkenas/docco>
ruby版本
<http://rtomayko.github.com/rocco/>
<https://github.com/rtomayko/rocco>



2013-06-21


# Showing off your localhost with PageKite
curl -s https://pagekite.net/pk/ | sudo bash
pagekite.py 80 yourname.pagekite.me
<http://wandborg.se/2012/09/23/pagekite.html>

project site
<https://pagekite.net/>


2013-06-21

# sicp lectures

> Massachusetts Institute of Technology
> Department of Electrical Engineering and Computer Science
> 
> Structure and Interpretation of Computer Programs
> 
> Video Lectures by Hal Abelson and Gerald Jay Sussman
> 
> Structure and Interpretation of Computer Programs has been MIT's introductory pre-professional computer science subject since 1981. It emphasizes the role of computer languages as vehicles for expressing knowledge and it presents basic principles of abstraction and modularity, together with essential techniques for designing and implementing computer languages. This course has had a worldwide impact on computer science curricula over the past two decades. The accompanying textbook by Hal Abelson, Gerald Jay Sussman, and Julie Sussman is available for purchase from the MIT Press, which also provides a freely available on-line version of the complete textbook.
> 
> These twenty video lectures by Hal Abelson and Gerald Jay Sussman are a complete presentation of the course, given in July 1986 for Hewlett-Packard employees, and professionally produced by Hewlett-Packard Television. The videos have been used extensively in corporate training at Hewlett-Packard and other companies, as well as at several universities and in MIT short courses for industry.
> 
> You can find the videos here at MIT OpenCourseWare in formats both for streaming viewing and for downloading.
> 
> Note: These lectures follow the first edition (1985) of Structure and Interpretation of Computer Programs. Many of the programs discussed were rewritten for the second edition (1996) of the book, and new material was added. These video lectures will still be useful for students using the second edition, since the overall themes of the course and order of presentation are unchanged.
> 
> These video lectures are copyright by Hal Abelson and Gerald Jay Sussman. They are licensed under a Creative Commons License (Attribution Share-Alike.
> Last modified: March 17 2012, 3:49 PM
> 
> <http://groups.csail.mit.edu/mac/classes/6.001/abelson-sussman-lectures/>



2013-06-21

# sicp solutions at schemwiki

<http://community.schemewiki.org/?sicp-solutions>



2013-06-21

# Simple way to manage your todo list in AJAX style. 
Written in PHP and jQuery.
Data stored in SQLite or MySQL database.
Distributed under the GNU GPL License.
<http://www.mytinytodo.net/>


2013-06-21

# sinatra redis based url shortener

<https://github.com/MichaelEvans/url_shortener>
<https://github.com/sxua/shortener-rb>
<https://github.com/xenji/shorty>
<https://github.com/gregoriomelo/shrtr>
<https://github.com/gregoriomelo/shrtr>



2013-06-21


# slogan of Korean singer Psy dress class dance cheesy
鸟叔的口号： dress classy, dance cheesy


2013-06-21

# strange loop 是一个关于新兴计算机语言的会议
Strange Loop is a conference held in St Louis, Missouri. Topics include emerging languages, concurrent and distributed systems, new database technologies, front-end web, and mobile apps.
<https://strange-loop-2012-notes.readthedocs.org/en/latest/>


2013-06-21


# Welcome to a Little Book of R for Time Series!
<https://a-little-book-of-r-for-time-series.readthedocs.org/en/latest/>



2013-06-21

# 读ruby facet 这个gem的提供很多好用的新方法

读它的demo可以了解都有哪些新方法。
<https://github.com/rubyworks/facets/tree/master/demo>

读它的源码对学习ruby很有帮助。
<https://github.com/rubyworks/facets/tree/master/lib>

在begin ruby这本书中多次提到了这个库。


2013-06-21

# Why Functional Programming Matters
<http://www.cse.chalmers.se/~rjmh/Papers/whyfp.html>
<http://www.defmacro.org/ramblings/fp.html>

video <http://www.bestechvideos.com/2008/11/30/rubyconf-2008-better-ruby-through-functional-programming>

via: <http://www.h6.dion.ne.jp/~machan/>



2013-06-21

# wiki on a stick; 可以加密文本的个人wiki程序

它最大好处就是可以加密其内容。程序就是一个包。可以导出为普通html。

类似的还有[tidddlywiki](http://tiddlywiki.com/)。使用起来很简单。下载一个文件，在浏览器里打开编辑就可以了。只是不支持加密。# ruby中数组引用同一对象的例子

    >> a = ['abc'] * 3
    => ["abc", "abc", "abc"]
    >> s = a[0]
    => "abc"
    >> s.upcase!
    => "ABC"
    >> p s
    "ABC"
    => "ABC"
    >> p a
    ["ABC", "ABC", "ABC"]
    => ["ABC", "ABC", "ABC"]

例子来自《松本行弘的程序世界》，p347

这个例子的变化

    >> b = ['abc', 'abc', 'abc']
    => ["abc", "abc", "abc"]
    >> t = b[0]
    => "abc"
    >> t.upcase!
    => "ABC"
    >> p t
    "ABC"
    => "ABC"
    >> p b
    ["ABC", "abc", "abc"]
    => ["ABC", "abc", "abc"]

好一些了，但是t还是影响到了原来的数组b中的元素。

有没有什么方法，把数字中某个元素赋值给一个函数，然后改变那个函数，同时数组不受影响呢？

lvcha给了正确的方法：）

    >> a
    => ["ABC", "ABC", "ABC"]
    >> t = a[0].clone
    => "ABC"
    >> t.downcase!
    => "abc"
    >> a
    => ["ABC", "ABC", "ABC"]



2013-06-21

# 一个很有意思的js框架，名字是o_O

叫funny face
<http://weepy.github.com/o_O/>
和这个思路差不多？
<http://angularjs.org/>


2013-06-21


# 写和翻译了不少好文档的huangz的网站

Redis 命令参考中文版 <http://redis.readthedocs.org/en/latest/>

SICP 解题集

Clojure API 文档中文版 <http://clojure-api-cn.readthedocs.org/en/latest/>

Real World Haskell 中文版 <http://rwh.readthedocs.org/en/latest/>

Python Storm ORM 教程中文版 

<http://huangz.me/>



2013-06-21

# 命令行下echo出unicode字符
> echo unicode characters
> from Command-Line-Fu by SQUIIDUX
> $ echo -e \\u2620
> <http://www.commandlinefu.com/commands/view/11438/echo-unicode-characters>
太有用了！

let's try it:

    $ echo -e \\u26612
    ♡2
    $ echo -e \\u2661
    ♡
    $ echo -e \\u2660
    ♠
    $ echo -e \\u2663
    ♣
    $ echo -e \\u2664
    ♤
    $ echo -e \\u2665
    ♥
    $ echo -e \\u2666
    ♦
    $ echo -e \\u2667
    ♧
    $ echo -e \\u2668
    ♨
    $ echo -e \\u2669
    ♩
    $ echo -e \\u2670
    ♰
    $ echo -e \\u2671
    ♱
    $ echo -e \\u2672
    ♲
    $ echo -e \\u2673
    ♳



2013-06-21

# 在irb中实现require_relative
> So, I needed this an implemented this method and added it to the .irbrc file, nothing complex, but I found it useful still:
> 
>     module Kernel
>       def require_relative(file)
>         $:.push Dir.pwd
> 	       require file
> 	  end  
> 	end
> <http://www.rodrigoalvesvieira.com/add-require-relative-to-irb/>



2013-06-21

# 对比各个js框架写todolist的程序
<https://github.com/addyosmani/todomvc>


2013-06-21

# compare string similarity

方法介绍文章： <http://www.catalysoft.com/articles/StrikeAMatch.html>

<http://en.wikipedia.org/wiki/Levenshtein_distance>

<http://stackoverflow.com/questions/955110/similarity-string-comparison-in-java>



2013-06-21

# Chinese Pinyin Letter Frequency ＆ Dvorak Layout; 拼音字母頻率 ＆ Dvorak 鍵盤佈局
<http://wordyenglish.com/musing/pinyin_frequency.html>



2013-06-21

# ruby chinese to unicode

	>> [22269].pack('U*')
	=> "国>> p "国".unpack("U*").first22269
	=> 22269

<http://stackoverflow.com/questions/4620549/convert-unicode-into-character-with-rubyconverted_text = Iconv.conv('iso-8859-15', 'utf-8', text)># ruby detect if a string contains cjk
      (ruby 1.9.2)
      
      #encoding: UTF-8
      class String
        def contains_cjk?
            !!(self =~ /\p{Han}|\p{Katakana}|\p{Hiragana}|\p{Hangul}/)
      	    end
      		end
      		
      		strings= ['日本', '광고 프로그램', '艾弗森将退出篮坛', 'Watashi ha bakana gaijin desu.']
      		strings.each{|s| puts s.contains_cjk?}
      		
      		#true
      		#true
      		#true
      		#false

<http://stackoverflow.com/questions/4681055/how-can-i-detect-cjk-characters-in-a-string-in-ruby>

## a gem is made for this

<https://github.com/jpatokal/script_detector>



2013-06-21

# ruby curry function

<http://khelll.com/blog/ruby/ruby-currying/>



2013-06-21

# ruby gem for find distance simliarity of strings
> require 'amatch'
> # => true
> include Amatch
> # => Object
> 
> m = Sellers.new("pattern")
> # => #<Amatch::Sellers:0x40366324>
> m.match("pattren")
> # => 2.0
> m.substitution = m.insertion = 3
> # => 3
> m.match("pattren")
> # => 4.0
> m.reset_weights
> # => #<Amatch::Sellers:0x40366324>
> m.match(["pattren","parent"])
> # => [2.0, 4.0]
> m.search("abcpattrendef")
> # => 2.0
> 
> m = Levenshtein.new("pattern")
> # => #<Amatch::Levenshtein:0x4035919c>
> m.match("pattren")
> # => 2
> m.search("abcpattrendef")
> # => 2
> "pattern language".levenshtein_similar("language of patterns")
> # => 0.2
> 
> m = Hamming.new("pattern")
> # => #<Amatch::Hamming:0x40350858>
> m.match("pattren")
> # => 2
> "pattern language".hamming_similar("language of patterns")
> # => 0.1
> 
> m = PairDistance.new("pattern")
> # => #<Amatch::PairDistance:0x40349be8>
> m.match("pattr en")
> # => 0.545454545454545
> m.match("pattr en", nil)
> # => 0.461538461538462
> m.match("pattr en", /t+/)
> # => 0.285714285714286
> "pattern language".pair_distance_similar("language of patterns")
> # => 0.928571428571429
> 
> m = LongestSubsequence.new("pattern")
> # => #<Amatch::LongestSubsequence:0x4033e900>
> m.match("pattren")
> # => 6
> "pattern language".longest_subsequence_similar("language of patterns")
> # => 0.4
> 
> m = LongestSubstring.new("pattern")
> # => #<Amatch::LongestSubstring:0x403378d0>
> m.match("pattren")
> # => 4
> "pattern language".longest_substring_similar("language of patterns")
> # => 0.4
> 
> m = Jaro.new("pattern")
> # => #<Amatch::Jaro:0x363b70>
> m.match("paTTren")
> # => 0.952380952380952
> m.ignore_case = false
> m.match("paTTren")
> # => 0.742857142857143
> "pattern language".jaro_similar("language of patterns")
> # => 0.672222222222222
> 
> m = JaroWinkler.new("pattern")
> # #<Amatch::JaroWinkler:0x3530b8>
> m.match("paTTren")
> # => 0.971428571712403
> m.ignore_case = false
> m.match("paTTren")
> # => 0.79428571505206
> m.scaling_factor = 0.05
> m.match("pattren")
> # => 0.961904762046678
> "pattern language".jarowinkler_similar("language of patterns")
> # => 0.672222222222222
> Author
> Florian Frank flori@ping.de
> <https://github.com/flori/amatch>



2013-06-21

# Ruby on Rails 中文教程
Ruby on Rails Tutorial 原书第二版
<http://about.ac/rails-tutorial-2nd-cn/>



2013-06-21

# ruby processing 一个模仿 mit processing 语言的ruby gem
<https://github.com/jashkenas/ruby-processing>
<https://github.com/jashkenas/learning-processing-with-ruby>
<https://github.com/jashkenas/new-turing-omnibus>



2013-06-21

# ruby set combination list comprehension cartesian product

<https://github.com/postmodern/combinatorics>



2013-06-21

# ruby webrick based web server for text to speech using espeak
<http://www.jezra.net/blog/ruby_webrick_based_web_server_for_text_to_speech_using_espeak>



2013-06-21

# ruby下的ngram

项目：
<https://github.com/pecbali/ngramdistance-ffi>

> * distance
> 
>     require 'ngramdistance'
>     NGramDistance.distance("string1", "string1") # returns 1.0
>     NGramDistance.distance("university", "univearsitty",3) # returns 0.750000
> 
> * token_sort_distance
>     
> 	require 'ngramdistance'
>     NGramDistance.token_sort_distance("hello bello", "bello hello") # returns 1.0
> 
> The token sort approach involves tokenizing the string in question, sorting the tokens alphabetically, and then joining them back into a string. For example:
> 
>     "new york mets vs atlanta braves"   →→  "atlanta braves mets new vs york" 
> 
> We then compare the transformed strings with a simple distance(). That nicely solves our ordering problem, as our helper function below indicates:
> 
>     NGramDistance.token_sort_distance("New York Mets vs Atlanta Braves", "Atlanta Braves vs New York Mets") ⇒ 1.0
> 
> method signature is token_sort_distance(source,target,regex=' ',ngram=3,mode=PROPOSITIONAL) the arguments are same as distance function but with extra argument regex, character or string to split source and target


2013-06-21

# ruby下英文分句的gem

    require "tactful_tokenizer"
    m = TactfulTokenizer::Model.new
    m.tokenize_text("Here in the U.S. Senate we prefer to eat our friends. Is it easier that way? <e>Yes.</em> <em>Maybe</em>!")
    #=> ["Here in the U.S. Senate we prefer to eat our friends.", "Is it easier that way?", "<em>Yes.</em>", "<em>Maybe</em>!"]

<https://github.com/SlyShy/Tactful_Tokenizer>



2013-06-21

# ruby中参数

我不知道起什么名字了其实我就是想做到

      >> c =[[1,2], [3,4]]
      => [[1, 2], [3, 4]]
      >> c.reduce({}) {|h, (k,v)|  h[k]=v; h}
      => {1=>2, 3=>4}
	  
看来嵌套在里面的结构需要用括号分组？我不知道正确称谓是什么。

     >> Hash[*[1 ,2, 3, 4]]  # > ruby 1.9
     => {1=>2, 3=>4}

     h={}; array.each { |k,v| h[k]=v } # obvious way, maybe a better way

非要用reduce确实有一定装的嫌疑。：） 当然我在看clojure的入门东西因此经常拿ruby去实现书中举例，当作练习。


2013-06-21

# ruby中每次从数组里取n个元素的方法是each_slice

You can use Enumerable#each_slice in conjunction with #each to avoid inline calculations. each_slice breaks the array into chunks of n
<http://stackoverflow.com/questions/2851915/rails-each-loop-insert-tag-every-6-items>


2013-06-21

# ruby中生成随机字母的小巧代码     ('a'..'z').to_a.shuffle[0..7].join

     # 随机排列字符串
     class String
       def shuffle
         self.split('').shuffle.join
       end
     end
	 puts "abcdefg".shuffle.inspect
		
<http://ruby-china.org/topics/9132>



2013-06-21

# ruby中用换行符号以外的符号切分文本

    => "abc is a tv station.  yes, it is. how about nbc?"
    >> s = 'abc is a tv station.  yes, it is. how about nbc?'
    => "abc is a tv station.  yes, it is. how about nbc?"
    >> s.each_line('. ') {|l| p l}
    "abc is a tv station. "
    " yes, it is. "
    "how about nbc?"
    => "abc is a tv station.  yes, it is. how about nbc?"

ruby程序设计286技的地151，page 221



2013-06-21

# ruby中的functioning program
<http://blog.hashrocket.com/posts/functional_eye_ruby_guy>
<http://rubysource.com/functional-programming-techniques-with-ruby-part-iii/>
<http://khelll.com/blog/ruby/ruby-currying/>


2013-06-21

# ruby生成一小段随机字符串的方法How to create small, unique tokens in Ruby
<http://blog.logeek.fr/2009/7/2/creating-small-unique-tokens-in-ruby>


2013-06-21

# rvm readlines irb h

> $ rvm get head
> Remove all the manually installed packages:
> $ rvm pkg remove
> Install the required libraries:
> $ rvm requirements run
> Reinstall ruby:
> $ rvm reinstall 1.9.3
> 
> $ rvm pkg install readline
> 
> <https://rvm.io/packages/readline/>



2013-06-21

# 用gem specific_install 安装任意制定git url的gem

最近我的gem出很多问题。直接gem install从rubygems上下载的版本总是和github上该作者的版本不一样。就是说版本号一样，但行为不一致。我报bug，人家无法复现。

最终找到了这个佳作 specific_install 的gem可以让你从制定url安装gem。用它再安装作者的gem，行为就和作者使用的版本一致了。

该项目的主页
<https://github.com/rdp/specific_install>

使用说明
> specific_install gem: 
> 
> a rubygems plugin that allows you to install an "edge" gem straight from its github repository, or install one from an 
> arbitrary url web:
> 
> ex:
> 
> $ gem specific_install -l http://github.com/githubsvnclone/rdoc.git
> 
> git installing from http://github.com/githubsvnclone/rdoc.git
>     ...
>     (in /tmp/d20100401-30708-fwpa18)
>     mkdir -p pkg
>       Successfully built RubyGem
>       Name: rdoc
> 	    Version: 2.5
> 	    File: rdoc-2.5.gem
> 		mv rdoc-2.5.gem pkg/rdoc-2.5.gem
> 		Successfully installed rdoc-2.5
> 		1 gem installed
> 		
> 		[ it runs git clone, and rake install, install the gem, then deletes the temp directory]
> 		
> 		and a url:
> $  gem specific_install -l http://github.com/downloads/rdp/ruby_core_ri/rdoc-2.4.3.1.gem
> 
> downloading http://github.com/downloads/rdp/ruby_core_ri/rdoc-2.4.3.1.gem
> ...
> 
> Saving to: `rdoc-2.4.3.1.gem'
> 
> 100%[======================================================================================================================================================>] 176,128      211K/s   in 0.8s
> 
> Successfully installed rdoc-2.4.3.1
> 1 gem installed
> 
> == Installation ==
> 
> $ gem install specific_install
> 
> Enjoy.## search install gem from github source

<http://stackoverflow.com/questions/2577346/how-to-install-gem-from-github-source># rvm中升级所有的gems
> Updating all gemsets
> 
> A useful option for those living on the edge. To keep all the installed gems current it is enough to use rubygems update, it will take care of updating everything.
> 
> Examples
> 
> $ rvm gemset update
> 
> <https://rvm.io/rubies/upgrading/>

more on this topic
<https://rvm.io/rubies/upgrading/>

对于我来说，不是我追新，而是我觉得这么做方便。我的开发也没有到需要依赖任何gem的任何特定版本这种程度。



2013-06-21

# 用ruby去除文件中完全相同内容的行

直接读取数据库并清楚相同内容的方法
<http://www.bdunagan.com/2010/08/24/dedupe-files-with-50-lines-of-ruby/>

去除相同内容的行！
<http://stackoverflow.com/questions/7156825/remove-rows-in-file-ruby>

<https://gist.github.com/618072>

一个去除重复文件的代码例子
<http://my.safaribooksonline.com/book/web-development/ruby/0596523696/system-administration/rubyckbk-chp-23-sect-7>



2013-06-21

# 用ruby解scip的题

<http://www.angelfire.com/tx4/cus/pl/sicp_ruby_01.html>
<http://www.angelfire.com/tx4/cus/pl/sicp_ruby_02.html>
...
以此类推



2013-06-21
