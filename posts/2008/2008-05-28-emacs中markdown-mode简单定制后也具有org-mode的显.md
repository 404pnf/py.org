# emacs中markdown-mode简单定制后也具有org-mode的显示大纲和展开内容的功能了

## emacs中markdown-mode简单定制后也具有org-mode的显示大纲和展开内容的功能了

markdown是可读性和强且能写出标准html文本的语言。

markdown-mode非常好用，但默认没有大纲功能（outline）。

如果没有大纲，在文章比较长的时候无法清晰纵览文章结构也不能很快地跳到某一章节。而且，习惯了在大纲模式下工作的我，眼睛已经不能忍受屏幕上多一丝与我现在编写内容无关的东西。

还是pluskid的文章帮了我大忙。

完全就是参考定制muse那一套方法

;; 帮定tab到org-cycle
;; http://pluskid.lifegoo.com/wiki/Muse.html#TabOutline
;; 这样在标题按tab就是循环代展开或者叠起该部分
;; 按shift-tab，就是调到下一个reference。一般是url
(require 'org)
(define-key muse-mode-map (kbd "<tab>") 'org-cycle)
(define-key muse-mode-map (kbd "<S-iso-lefttab>") 'org-shifttab)



;;另外，默认在 muse-mode 里面识别 outline 标题的正则表达式是 "\\*+" ，这
;;有时候会识别错误，因为在 Muse 里面 * 还可以用于表示强调，如果强调的那个
;;词刚好在行首的话就会识别错误了。事实上，如果是标题的话， * 后面应该至少
;;还要有一个空格，所以这里可以修改一下这个正则表达式。这是一个buffer 局部
;;变量，所以可以在 muse-mode 的 hook 里面修改而不用担心影响到全局的值。另
;;外，打开文档的时候就使用 hide-body 来让他只显示框架是很不错的一个选择：
;;http://pluskid.lifegoo.com/wiki/Muse.html#OutlineMode

(add-hook 'muse-mode-hook
          '(lambda ()
             (setq outline-regexp "\\*+ ")
             (outline-minor-mode)
             (hide-body)))

只要把上面代码中的muse-mode改成markdown-mode这些就都可以在markkdown中实现了。下面就是修改后的代码。

你要是需要在其它mode中也这样用，照例子用你的 xxx-mode 替换一下就应该也可以。

;; 根据上面的方法，把markdown-mode中标题的正则表达式设置为每行顶头的#号。
;; 而且也打开文件的时候默认折叠所有标题

(add-hook 'markdown-mode-hook
          '(lambda ()
             (setq outline-regexp "\\#+ ")
             (outline-minor-mode)
             (hide-body)))

;; 在markdown-mode中也帮定tab到org-cycle
;; http://pluskid.lifegoo.com/wiki/Muse.html#TabOutline
;; 这样在标题按tab就是循环代展开或者叠起该部分
;; 按shift-tab，就是调到下一个reference。一般是url
(require 'org)
(define-key markdown-mode-map (kbd "<tab>") 'org-cycle)
(define-key markdown-mode-map (kbd "<S-iso-lefttab>") 'org-shifttab)


markdown-mode也完美了。

我再没有理由说自己翻译和编写的文章少是因为还没有很好的工具了。：）

虽然还有ikwiki的问题没有解决。：）

但，已经很好很好了。

我起心眼儿里高兴。

## 面临一个问题

这样设置后，原markdown模式下的那些字体和颜色都没了。就是没有了font-lock？整个屏幕都一个颜色的字，文字层次和功能看着不清楚。




2008-05-28