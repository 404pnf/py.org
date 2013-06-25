# tac可以指定spparaator 而不是只用默认的换行符 \n 来分割开record

## tac可以指定spparaator，而不是只用默认的换行符（\n）来分割开record

## 我举的例子你们谁有其他解法，不管用什么工具也请告诉哦文

##用例子说明tac

### 例子1

404@404:~$ cat tac-example.txt 

a 一个
bee 蜜蜂
cat 猫


404@404:~$ tac tac-example.txt 



cat 猫
bee 蜜蜂
a 一个


这个例子最清楚。


### 例子2

404@404:~$ cat tac-example.txt 

      a 
      1、一个
      2、元音字母
      ----
      bee 
      1、蜜蜂
      2、as busy as bee 象征勤劳
      ----
      cat 
      1、猫
      2、unix命令。源自concatnate这个次中间的cat
      ----


404@404:~$ tac -a '----'  tac-example.txt
尝试用 ---- 做为分割。不行！！

### 例子3

404@404:~$ cat tac-example.txt 

每条记录以空行分开，用tac倒转记录顺序

      a 
      1、一个
      2、元音字母
      
      bee 
      1、蜜蜂
      2、as busy as bee 象征勤劳
      
      cat 
      1、猫
      2、unix命令。源自concatnate这个次中间的cat


404@404:~$ tac -a '^$' tac-example.txt 
tac: invalid option -- a
请尝试执行‘tac --help’来获取更多信息。

我想用 ^$ 就是正则表达式一个空行作为 分割，不成功。我用 '\n\n'也不行。unxi中的LF（Line Feed）的正则表达是什么呀。把-a改成-r，还是不行。-r后面跟regualr expression，用那个表达式作为分割。

## 需要帮助。
上面的我没搞明白的都需要大家帮助。
其中例子3似乎用awk也应该可以。但还是不知道如何倒转顺序。



## 刚一开始我举的例子，也遇到一个问题



tac就是cat返过来。举个例子。

404@404:~$ cat tac2.txt 
a
1
a
2
a
3
404@404:~$ tac tac2.txt 
3
a
2
a
1
a
直接用tac让排列顺序以行号为分割，全部颠倒。最后一行成为第一行，倒数第2行成为第2行。。。第一行成为最后一行

404@404:~$ tac -s 'a' tac2.txt 

3

2
a
1



现在我用 a 这个字母作为分割记录分割，就是每到一个a才算一个记录，而不是默认的到了换行符就算一个记录。

这里出现了问题。丢失了2个a呀！！！！现在怎么就剩一个了。



给分割符号a加个单引号，还是这样，


## 这个命令有意义么

有：）

1）如果你有一个单词表，从a-z排列，一个单词一行。你现在要把它从z－a排列。


2）你有意个单词表，从a-z排列，一个单词多行，但每个单词之间有个空行。你现在要把它从z-a排列。






2007-12-27