# emacs中把dos格式的文件存成unix的方法

## emacs中把dos格式的文件存成unix的方法

eamcs打开文件，按 ctrl - enter -f 。按ctrl，然后松开，然后按回车，然后按f。提示你输入要存成的coding system，直接按tab，一直按，会给你所有选择。要是从dos转unix，直接输入unix按tab补齐就好了。

从mac转到unix也是这样。从unix转到mac也是这样。

从big5转到gb好像也可以的。

dos格式下在liux下用grep因为无法识别正确换行服，好多行都接在一起了，影响grep效果。


2008-06-03