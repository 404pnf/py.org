# emacs中用 ctlr -x RET f 设定当前也能面的字符编码

## emacs中用 ctlr -x RET f 设定当前也能面的字符编码

      M-x set-buffer-file-coding-system utf-8-unix 

快捷键是 ctrl -x RET f 。 RET是回车的意思。
图形界面在哪个菜单下啊？我没找着。肯定应该有。
和utf-8相关的选项还有，用tab补齐查看utf-8-
我参考这个页面最后的内容

> http://www.emacswiki.org/cgi-bin/wiki/SeijiZenitaniDotEmacs
> "Encoding Menu."
>  '("Change File Encoding"
>    ["UTF8 - Unix (LF)" (set-buffer-file-coding-system 'utf-8-unix) t]
>    ["UTF8 - Mac (CR)" (set-buffer-file-coding-system 'utf-8-mac) t]
>    ["UTF8 - Win (CR+LF)" (set-buffer-file-coding-system 'utf-8-dos) t]
>    ["--" nil nil]


2008-01-03