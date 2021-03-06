# emacs-goodies中的browse-kill-ring 方便查看和选中内置剪贴板中的内容

emacs-goodies中的browse-kill-ring：方便查看和选中内置剪贴板中的内容

> File: emacs-goodies-el,  Node: browse-kill-ring,  Next: cfengine,  Prev: browse-huge-tar,  Up: Top
> 
> 9 browse-kill-ring.el -  interactively insert items from kill-ring.
> *******************************************************************
> 
> Ever feel that `C-y M-y M-y M-y ...' is not a great way of trying to
> find that piece of text you know you killed a while back?  Then
> browse-kill-ring.el is for you.
> 
>    To use, type `M-x browse-kill-ring'.  You can bind
> `browse-kill-ring' to a key, like:
> 
>      (global-set-key (kbd "C-c k") 'browse-kill-ring)
> 
>    Even better than doing that, though, is to set up `M-y' such that it
> invokes `browse-kill-ring' if the last command wasn't a yank.  This
> great idea is from Michael Slass <mikesl@wrq.com>.  Here is code (from
> him) to do this:
> 
>      (defadvice yank-pop (around kill-ring-browse-maybe (arg))
>        "If last action was not a yank, run `browse-kill-ring' instead."
>        (if (not (eq last-command 'yank))
>            (browse-kill-ring)
>          ad-do-it))
> 
>      (ad-activate 'yank-pop)
> 
>    (The emacs-goodies-el package could add a customizable variable to
> set this up.  Ask if this would be useful. - <psg@debian.org>)
> 
>    Note that the command keeps track of the last window displayed to
> handle insertion of chosen text; this might have unexpected
> consequences if you do `M-x browse-kill-ring', then switch your window
> configuration, and try to use the same `*Kill Ring*' buffer again.
> 
> 

2008-07-16