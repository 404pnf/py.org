# uniq uniq -u sort sort -u 的区别

## uniq, uniq -u, sort, sort -u 的区别

sort -u 不也是么？

uniq本来就是去除不一样的行呀。是这样么？

真的是这样么？！

：）

我们看一下man。


> DESCRIPTION
>  Discard all but one of successive identical lines from INPUT (or standard input), writing to OUTPUT (or standard output).
> 
>  Mandatory arguments to long options are mandatory for short options too.
> 
>  -c, --count
>   prefix lines by the number of occurrences
> 
>  -d, --repeated
>   only print duplicate lines
> 
>  -D, --all-repeated[=delimit-method] print all duplicate lines
>   delimit-method={none(default),prepend,separate} Delimiting is done with blank lines.
> 
>  -f, --skip-fields=N
>   avoid comparing the first N fields
> 
>  -i, --ignore-case
>   ignore differences in case when comparing
> 
>  -s, --skip-chars=N
>   avoid comparing the first N characters
> 
>  -u, --unique
>   only print unique lines

看来是有区别的。没有加-d的时候是去除连续的重复行，只保留一行。

有-u，手册说只打印不一样的行。隐含的意思是即使他们不连续但他们一样，那么也只打印一次。

我们用例子来试验一下。


$ cat uniq-test.txt

a
a
b
b
a
b
a

404@404:~$ uniq uniq-test.txt

a
b
a
b
a

404@404:~$ uniq -u uniq-test.txt

a
b
a

404@404:~$ 

确实有区别：）

## 我们再来看看sort和sort -u和上面uniq的区别



404@404:~$ cat uniq-test.txt

a
a
b
b
a
b
a

404@404:~$ sort uniq-test.txt


a
a
a
a
b
b
b
404@404:~$ sort -u uniq-test.txt

a
b

区别大了。 ；）

## 学无止境啊

细节的东西不推敲感觉真乱。推敲一下还有点意思。


2007-12-28