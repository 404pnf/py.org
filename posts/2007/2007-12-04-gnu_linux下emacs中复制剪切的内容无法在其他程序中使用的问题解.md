# gnu linux下emacs中复制剪切的内容无法在其他程序中使用的问题解决了 比如从emacs中复制的文本无法粘贴到firefox中

gnu/linux下emacs中复制剪切的内容无法在其他程序中使用的问题解决了。比如从emacs中复制的文本无法粘贴到firefox中。


> http://www.oreillynet.com/lpt/wlg/6162
>Quick tip for Linux users having trouble with Emacs (or XEmacs) copy/paste
>by Uche Ogbuji
>Jan. 6, 2005
>URL: http://www.emacswiki.org/cgi-bin/wiki/CopyAndPaste

简单说就是下面两句加到.emacs中

      (setq x-select-enable-clipboard t)
      (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

这样做之后，用C-y和鼠标中键都可以粘贴文字了。尽量用C-y，因为那个鼠标1）不容易定位。我老服知道其他地方，因为不知道鼠标光标在哪里 2）键盘快呀

确实。默认没有这个设置令人无法忍受！！呼吁各gnu/linux发行商应该在自己默认的emacs包中的配置文件里默认就写好这个设置！




2007-12-04