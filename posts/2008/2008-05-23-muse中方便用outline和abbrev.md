# muse中方便用outline和abbrev

## muse中方便用outline和abbrev。

这篇文章真不错。
http://pluskid.lifegoo.com/wiki/Muse.html

它那个html中显示代码的框太炫了：一个emacs的编辑buffer。：）

帮定tab到org-cycle。

      (require 'org)
      (define-key muse-mode-map (kdb "<tab>") 'org-cycle)
      (define-key muse-mode-map (kbd "<S-iso-lefttab>") 'org-shifttab)

我这个就很粗糙啦。


2008-05-23