# 新版的emacs markdwon-mode默认就支持org-mode那种大纲模式和相应键绑定了

新版的emacs markdwon-mode默认就支持org-mode那种大纲模式和相应键绑定了

我在这次升级中起了推波助澜的作用。：）

下面是作者给我回信

> Hi 404,
> 
> > Goal:
> > 1 to have markdown work with outline-minor-mode
> > 2 to have org-cycle work in that combination
> 
> This is a really good idea, thank you for suggesting it.
> 
> I managed to get it working with one small change to your code.  I
> didn't have any trouble with font lock or anything.  However, I'm using
> the latest development version of markdown-mode which I haven't released
> yet.  I don't *think* there should be any differences, but you never
> know.
> 
> > (autoload 'markdown-mode "markdown-mode.el"
> >    "Major mode for editing Markdown files" t)
> > ;; 打开文件后缀为.mdwn的文件，自动进入markdown-mode
> > ;; ikiwiki中要求文件后缀是.mdwn
> > (setq auto-mode-alist
> >    (cons '("\\.mdwn" . markdown-mode) auto-mode-alist)
> 
> This part above is all standard.
> 
> > ;; 根据上面的方法，把markdown-mode中标题的正则表达式设置为每行顶头的#号。
> > ;; 而且也打开文件的时候默认折叠所有标题
> >   (add-hook 'markdown-mode-hook
> >             '(lambda ()
> >                (setq outline-regexp "\\#+ ")
> >                (outline-minor-mode)
> > ;; when load a file, hide-body automatically
> > ;; so i can have a overview of the file
> >               (hide-body)))
> 
> This is the part I changed.  I used the following:
> 
>    (setq outline-regexp "#+ ")
> 
> > ;; 在markdown-mode中也帮定tab到org-cycle
> > ;; http://pluskid.lifegoo.com/wiki/Muse.html#TabOutline
> > ;; 这样在标题按tab就是循环代展开或者叠起该部分
> > ;; 按shift-tab，就是调到下一个reference。一般是url
> >  (require 'org)
> >  (define-key markdown-mode-map (kbd "<tab>") 'org-cycle)
> >  (define-key markdown-mode-map (kbd "<S-iso-lefttab>") 'org-shifttab)
> 
> I used the same as above.
> 
> So, with the change above it works for me (and I really like the way it
> works).
> 
> 
> I actually spent some time incorporating this into markdown-mode itself
> by borrowing some code from org-mode and simplifying it significantly.
> That way, there is no additional external dependency.  If you'd like to
> try it out, download the latest version from the website:
> http://jblevins.org/projects/markdown-mode/
> 
> Let me know if this works like you expected.
> 
> Regards,
>
> Jason

我非常高兴。下载了新版本放到 .emacs.d/ 中。
直接进入mark-down模式，根本不用开outline-minor-mode就可以用tab键和shift-tab来切换各种大纲显示模式了。

Sweet~!




2008-06-11