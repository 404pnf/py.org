# 用sed把文本文件中dos windows的回车符号转成unix下的换行符号

## 用sed把文本文件中dos/windows的回车符号转成unix下的换行符号

> The following sed invocation will convert DOS/Windows format text to trusty UNIX format:
> 
> Code Listing 1.2: Converting C code from Windows to UNIX format
> 
> $ sed -e 's/.$//' mydos.txt > myunix.txt
> 
> http://www.gentoo.org/doc/en/articles/l-sed3.xml
 
同样把unix的换行符号换成dos/windwos下的CR/LF
 
> Code Listing 1.1: Format conversion between UNIX and Windows
> 
> $ sed -e 's/$/\r/' myunix.txt > mydos.txt
> 
> dos和windows下的CR/LF是carridge和line feed的缩写。

gentto文档的这个用例子学sed的文档非常非常值得一读。

2008-01-03