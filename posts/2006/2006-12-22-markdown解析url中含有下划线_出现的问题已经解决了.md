# markdown解析url中含有下划线 出现的问题已经解决了

update: 20080610 

这篇文章写的很不明白。而且**提到的问题在新版本的durpal和markdown中已经没有了**。

我重新简单说一下。

## 当时4.7版本的问题

老版本的markdown，drupal 4.7 版本的，如果你常遇到wikipedia上的文章url没能被markdown正常解释。原因是该url中有2条下划线，这是wikipedia命名多个单词的entry的方式。那么你可以把该url放在英文尖括号中，就不会出现问题了。

## 现在我用的drupal 6.0和相应版本的markdown，已经没有这个问题了。

比如 
http://en.wikipedia.org/wiki/_Hamad_bin_Khalifa
http://en.wikipedia.org/wiki/George_W._Bush

加上<>让它正确显示
<http://en.wikipedia.org/wiki/Hamad_bin_Khalifa>
<http://en.wikipedia.org/wiki/George_W._Bush>

这2个url中都有两个下划线包着一个单词。都正常。

现在加<>的好处只是让该url**完整显示**而不受url filter截取前多少个字符的限制。这对直接贴wikipedia的链接也有好处，大家一幕了然文章内容了。：）

end

----

markdown解析url中含有下划线 "_" 出现的问题已经解决了

teradome虽然对我几个月前报的问题回复很慢，但帮我解决了。真好。我当时报的问题在这里 http://drupal.org/node/92111

markdown的语法中两个下划线中的词是强调的意思。所以，如果你直接贴的网址中有两个和以上的下划线，如：

<code><http://the.url.com/some_location/a_file.html></code>

就不会被解析成正确的网址，而是把两个下划线中间的部分给解析成强调了。 如：
http://the.url.com/some_location/a_file.html

解决方法呢？2个

方法一：

方法就是用英文尖括号<>把含有下划线的url个括起来就好
        <http://the.url.com/some_location/a_file.html>

就是
<http://the.url.com/some_location/a_file.html>


方法二：
用反斜杠 \ 放在下划线 前面告诉markdown不要解析下划线
http://the.url.com/some\_location/a\_file.html

这个你看不到 http:// 是因为我[请小拉定制了一个urlfilter](http://pengyou.rijiben.org/node/776)切掉所有的http:// 了 (You don't see the http:// in this instance because i asked xiaola to make a [customerized version of urlfilter](http://pengyou.rijiben.org/node/776) which cuts off all the http:// )

就是这样.下面是terdome的回复


> I can't tell from your report if this occurs in an anchor tag or as
free-form text. I *do* know that free-form linking should be formatted
as <http://the.url.com/some_location/a_file.html> but depending what
else is in your input format (e.g., HTML Filter) this may get stripped.

I am using html filter and <> doesn't get stripped.

> If this is standard text, you may need to use backslash escapes to
preserve the underscore, such as
http://the.url.com/some\_location/a\_file.html -- this is a standard
Markdown feature.


problem solved. :) 

> teradome

you the man~ xiexie~(meaning thanks)

http://the.url.com/some\_location/a\_file.html 

<http://the.url.com/some_location/a_file.html> 

2006-12-22