# 让emacs的muse-mode更加好用的几个设置

## 让emacs的muse-mode更加好用的几个设置

下面是我.emacs中和muse-mode有最直接关系的所有内容。

## 第一部分基本是照抄muse的手册

      ;; load muse
      
            (add-to-list 'load-path "/usr/share/emacs-snapshot/site-lisp/muse-el")
            
            (require 'muse-mode)     ; load authoring mode
            
            (require 'muse-html)     ; load publishing styles I use
            (require 'muse-latex)
            (require 'muse-texinfo)
            (require 'muse-docbook)
            (require 'muse-project)  ; publish files in projects
       
       ;; 建立muse项目
       
       (setq muse-project-alist
                  '(("website" ("~/website" :default "index")
                     (:base "html" :path "~/public_html")
                     (:base "pdf" :path "~/public_html/pdf"))))

## 第2部分是精华，来自pluskid

      ;; muse中不放大标题，而像outline一下用不同颜色表示
      ;; http://pluskid.lifegoo.com/wiki/Muse.html#OutlineMode
      (setq muse-colors-autogen-headings 'outline)
      
      
      
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


有了第2部分。muse-mode才可称得上舒适的写作环境。：）没有大纲模式怎能舒适呢。大纲模式的键绑定如果是outline-minor-mode中那些，怎能舒适呢。

pluskid的设置让它舒适了。：）



2008-05-28