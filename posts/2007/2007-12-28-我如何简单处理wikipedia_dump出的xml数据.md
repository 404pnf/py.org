# 我如何简单处理wikipedia dump出的xml数据

## 我如何简单处理wikipedia dump出的xml数据

## 这个人已经成功了应该 

http://www.softlab.ntua.gr/~ttsiod/buildWikipediaOffline.html

>http://woc.fslab.de/woc/
>This project does, what its name implies: An offline client for Wikipedia. For more information have a look at the Specifications.

但是他用python等。我也没学会他到底是怎么弄的。
谁看懂了能写些东西讲解一下么？谢谢。

## 我的方法
以zh-wikibooks为例子
如果从浏览文章的角度来说 2个tag中内容意义

<title>
<text xml:space="preserve">

如果用regex获取title内容很简单。获取text有些麻烦，找到首尾两个tag，保留中间的。中间这部分和title行之外，其它行全部删除。

然后需要把这些内容生成单篇文章。

看来用xslt处理会方便得多。

这几match那个entity然后储来，其它entity删除？


继续研究

perl xml parser
http://www.google.com/search?hl=en&newwindow=1&client=firefox-a&rls=com.ubuntu%3Aen-US%3Aofficial&hs=rYN&q=perl+xml+parser&btnG=Search

sed xml parser
http://www.google.com/search?hl=en&newwindow=1&client=firefox-a&rls=com.ubuntu%3Aen-US%3Aofficial&hs=gEi&q=sed+xml+parser&btnG=Search

sed xml
http://www.google.com/search?hl=en&newwindow=1&client=firefox-a&rls=com.ubuntu%3Aen-US%3Aofficial&hs=wu2&q=sed+xml&btnG=Search

http://www.stylusstudio.com/xml/parser.html


http://www.issociate.de/board/post/274426/SED_&_XML.html
如何保留两个tag之间的内容。非常有帮助

           sed -ne '/<'"$host"'>/,/<\/'"$host"'>/!d' \ -e

http://blog.dotkam.com/2007/04/04/sed-to-parse-and-modify-xml-element-nodes/


command line xslt processor
http://xmlsoft.org/XSLT/xsltproc.html
默认bash中就有这个工具。至少我直接在bash输入xsltproc就出来了。

       sed -e '/<title>/!d' -e '/<text xml/,/<\/text>/!d' 

这个不对。我觉得问题出在第一个-e删除了没有title的行。第2个要找的根本没有，已经被第一个删除了。第2个一看剩下的行也没有它要的，就都删除了。所以生成的文件是一个空文件。

http://www.gnu.org/software/sed/manual/sed.html
http://www.gnu.org/software/sed/manual/sed.html#Other-Resources

## sed进行不去分大小写的查查找
> Several versions of sed support case-insensitive matching: ssed and GNU sed v3.02+ (with I flag after s/// or /regex/); 
> http://www.student.northpark.edu/pemente/sed/sedfaq4.html#s4.10


## xmlto
http://cyberelk.net/tim/software/xmlto/

## 成功 

      sed -n -e '/<title>/p' -e '/<text xml/,/<\/text>/p' zhwikibooks-20071129-pages-meta-current.xml > result_zhwikibok.xml

这里第2个<text>有问题。现在这种写法它直接把第一个<text xml>和最后一个</text>之间都打印了。




2007-12-28