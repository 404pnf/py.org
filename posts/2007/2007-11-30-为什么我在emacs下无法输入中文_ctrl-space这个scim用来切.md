# 为什么我在emacs下无法输入中文 ctrl-space这个scim用来切换输入语言的快捷键和eamcs中的set-mark冲突

为什么我在emacs下无法输入中文？ctrl-space这个scim用来切换输入语言的快捷键和eamcs中的set-mark冲突

但我另外一台机器运行unbutu gnu/linux 7.10，在gnome桌面下就可以编辑和输入中文。版本是这个。

> This is GNU Emacs 22.1.1 (i486-pc-linux-gnu, GTK+ Version 2.12.0)
 of 2007-11-07 on terranova, modified by Ubuntu


.emacs的内容，仙子只有这些

;; 设置中文语言环境，打开文件时为自动判断是否中文
(set-language-environment 'Chinese-GB)

;; 写文件的编码方式
(set-buffer-file-coding-system 'utf-8)

;; 新建文件的编码方式
(setq default-buffer-file-coding-system 'utf-8)

;; 终端方式的编码方式，如M-x shell
(set-terminal-coding-system 'utf-8)

## 不能正常输入中文的emacs信息

系统: ubuntu gnu/linux 6.06

emacs version:

.eamcs



我很想使用emacs来编辑文件。vim我也会学和用。但需要时间。现在工作挺多的。最好能整好了emacs先用着。nano和gedit都有不足。nano有eamcs的帮定件，这样对我来说编辑文件会快得多。但它查找替换我一直没搞明白，我会用，但不知道如何全局查找，高亮显示查找内容和全局替换。似乎替换我就没用出来。gedit很直观，大部分简单编辑内容我都能完成，比较复杂或者重复性的我在bash下用sed完成，然后在gedit中重新载入文件就可以。可是gedit没有类似bash和emacs那种帮定键，使得让光标在文字间移动的时候只能用键盘上的方向键或者鼠标，效率很低。

;; 键盘输入的编码方式
(set-keyboard-coding-system 'utf-8)

;; 读取或写入文件名的编码方式
(setq file-name-coding-system 'utf-8) 


2007-11-30