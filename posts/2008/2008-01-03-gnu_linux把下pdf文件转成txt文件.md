# gnu linux把下pdf文件转成txt文件

## gnu/linux把下pdf文件转成txt文件
http://www.google.com/search?q=linux+pdf+to+text&ie=utf-8&oe=utf-8&aq=t&rls=com.ubuntu:en-US:official&client=firefox-a

基本上xpdf中带的pdftotext就可以

	pdftotext 输入文件.pdf 输出文件.txt

可以man pdftotext看更多参数。我用了。不错。
英文没问题。但转一个中文pdf失败。出来的是乱码。不知道我哪里没搞清楚。应该是字符集设定。但我看不出如何设定。

这里问一下谁知道请帮忙。

这里是[pdftotext 中文](http://www.google.com/search?q=pdftotext+%E4%B8%AD%E6%96%87&ie=utf-8&oe=utf-8&aq=t&rls=com.ubuntu:en-US:official&client=firefox-a)相关搜索。

这有个成功的例子：

> 在第n次阅读xpdf的man手册后,我找到了方法,在man xpdfrc后,我看到了textEncoding选项,它默认是Latin1,而这个选项控制了pdftotext的输出字体,很好,我只要改掉它不就行了?
> 经过常识,我在xpdfrc的最后加上
> textEncoding EUC-CN
> 然后用命令
> pdftotext xxxxx.pdf xxxxx.txt
> 成功转化中文的PDF文件.
> http://www.linuxsir.org/bbs/showthread.php?t=78028

我相应做了一下。不成功。这里面不用管原始pdf的encoding么？


>  All  of the Xpdf tools read a single configuration file.  If you have a
>  .xpdfrc file in your home directory, it will  be  read.   Otherwise,  a
>  system-wide  configuration  file will be read from /etc/xpdf/xpdfrc, if
>  it exists.  (This is its default location; depending on build  options,
>  it  may be placed elsewhere.)  On Win32 systems, the xpdfrc file should
>  be placed in the same directory as the executables.

我看了一下那个文件。里面有 

>----- text output control

> Choose a text encoding for copy-and-paste and for pdftotext output.
> The Latin1, ASCII7, and UTF-8 encodings are built into Xpdf.  Other
>  encodings are available in the language support packages.
> 
> textEncoding           UTF-8
> 
> Choose the end-of-line convention for multi-line copy-and-past and
>  for pdftotext output.  The available options are unix, mac, and dos.
> 
> textEOL                unix

我把utf-8的注释去掉或者在自己的home目录下建立.xpdrc文件并写入textEncoding EUC-CN。出来的text文件中文仍然是乱码。

请大家指教。

pdf转html
http://pdftohtml.sourceforge.net/

2008-01-03