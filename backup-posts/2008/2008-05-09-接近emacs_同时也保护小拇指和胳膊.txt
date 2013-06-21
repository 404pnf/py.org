# 接近emacs 同时也保护小拇指和胳膊

## 接近emacs，同时也保护小拇指和胳膊

## emacs的一个笑话

emacs界有句笑话是“真爱小拇指，远离emacs”。这句话从“真爱生命，远离毒品”来的。

有这句话是因为emacs中大量快捷键用到了ctrl键。现在大家用的键盘布局绝大部分这个ctrl键都在左右两个下角，所以大部分人用小拇指按它们。

小拇指是5个手之中比较没有力气平常也得不到什么锻炼的。而且老张开小拇指确实会“拉上”小臂肌肉。反正我开始的时候就是这个感觉。后来我[从xahlee.org上学会了用手掌压ctrl键而不是用小拇指按](http://xahlee.org/emacs/emacs_pinky.html)。这样的话，手就不疼了。至少不因为老用小拇指疼。


> Use Your Palm or Semi-Fist
> 
> Do not use your pinky to press the Control key.
> 
> For most PC keyboards, it is very easy to press the control key using your palm. Just open your hand somewhat and push down. Alternatively, you can curl in your fingers into a semi-fist, then sit your fist on the control key.
> Use Both Hands
> 
> Do not use a just one hand to type a Control+‹key› combo.
> 
> Use one hand to press Control, use the other hand to press the combination key. This is the same principle for pressing the Shift key in touch-typing.

但我一直还是想把ctrl键映射到一个能用大拇指按的键。甚至把alt和ctrl键的映射交换都行。这是为什么呢？

因为在设计emacs的时候，键盘的布局和现在不一样，那时ctrl键的位置和我们现在常用键盘alt键的位置差不多，可以用大拇指来按。所以，当时的hacker们才把ctrl键作为最常用的控制键。他们不会难为自己的小拇指的。大家看一下emacs快捷键就知道了，ctrl最常用。alt用的不多。所以，根据当时键盘布局，大部分命令用ctrl是合理的。

![设计emacs时hacker们用的键盘](http://xahlee.org/emacs/i/Space-Cadet_keyboard-2m.jpg)


这是设计emacs时hacker们用的键盘。大家看一下，ctrl明显是用大拇指按的。当年rms它们用的机器好多都是symbolic的呀。 source: http://xahlee.org/emacs/emacs_kb_shortcuts_pain.html

但随着时间的推移，键盘布局变化了。但大家都忘了为什么用ctrl键了。一直以来abuse自己的小拇指。

如果你采用手掌压的方法，会加快速度和保护手指。如果能用大拇指按ctrl，向早年的hacker们一下，那不更好。

## 今天我总算知道如何用大拇指按ctrl键了。我的方法是把ctrl键映射到我键盘的windows键上。

> Recent Versions of Gnome (on GNU/Linux)
> 
> Recent versions of the Gnome desktop have a Keyboard Preferences dialog that allows you to configure the Ctrl key position. On Ubuntu this is found under System → Preferences → Keyboard. Under the “Layout Options” tab choose “Ctrl key position” and it gives you a number of choices.
> 
> http://www.emacswiki.org/cgi-bin/emacs-zh/MovingTheCtrlKey


我在我的gnu/linux上，使用gnome桌面，参照上面的方法：进入 系统－首选项－键盘。在该页面上有layout，然后点layout options。

我并没有去重新设置“ctrl key position”，因为给的默认设置只是和shift交换。shift也需要用小拇指按，等于没用。我去重新设置俄罗“alt/win key behavior”，把“control is mapped to win-key”这个勾选。这样，windows键，准备的说是windows键盘上的windows左键就是ctrl了。现在我就可以用大拇指来按ctrl了。

哈哈。
