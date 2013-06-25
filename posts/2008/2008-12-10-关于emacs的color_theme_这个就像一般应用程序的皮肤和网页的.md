# 关于emacs的color theme 这个就像一般应用程序的皮肤和网页的样式文件一样

## 关于emacs的color－theme。这个就像一般应用程序的皮肤和网页的样式文件一样。

可以让你的emacs用不同的色彩样式。已经写好的theme有几十个，都在emacs-goodies的包里面。在gnu/linux下，搜索该包并安装就好了。

在这个站点可以看看不同color theme的样子，帮助你快速选择： <http://www.cs.cmu.edu/~maverick/GNUEmacsColorThemeTest/index-el.html>


## 一次性使用颜色主题
调出的方法是 M-x color-theme-select 用C-n和C-p在样式中游走，回车选中查看。

但这种方法在下次启动时，你还需要再次选择，属于一次性的。

## 每次都想尝试些新的颜色主题
如果每次都想尝试几个theme，最好方法就是每次启动emacs时都有个buffer显示可选择的theme，选择那个buffer挑选就好哦了。方法是加入下面代码到你的.emacs中

       ;; 参考： http://www.emacswiki.org/emacs/ColorTheme
       ;; 每次启动emacs都会有一个色彩主题选择的buffer让你方便选择不同主题
       ;; 下面的代码应该放在 ~/.emacs中
       
           (load-library "color-theme")
           (color-theme-select)
       
       ;; 当然，你必须已经安装了color-theme呀。搜索emacs-goodies的包安装。或者自己下个。

## 设定默认颜色主题
      ;; 如果你有非常喜欢的主题，希望以后每次都用它，就用下面代码
      ;; 参考： http://www.emacswiki.org/emacs/ColorTheme
      
       ;; 先要求使用color-theme
       (require 'color-theme)
          ;; 设定默认的主题颜色（color-theme）名称
          ;; 一般来说，你从M-x color-theme-select 中选择的主题名称中间有空格
          ;; 你只要 1、把空格改成英文的连字符就可以了 2、都用小写字母 就可以了
          ;; 比如，我选择的是 Calm Forest，在这里写成 calm-forest就可以了
          (color-theme-calm-forest)


2008-12-10