# drupal iUI theme 模仿iphone的

没有iphone，不知道iphone浏览器和opera之类有何不同么？为什么需要特别的theme？

> Module can be used for more than .mobi switching
> This module can be used for more than .mobi switching-- you can have it work for any domain if you replace the following line (line 38 in mobi_loader.module):
>       if (substr($_SERVER['HTTP_HOST'], strrpos($_SERVER['HTTP_HOST'], '.')) == '.mobi')
>       to:
>       if ($_SERVER['HTTP_HOST'] == 'm.neopoet.com') {
> where 'm.neopoet.com' is the domain of your mobile-only site.
> 
> If somebody has the time, a great feature would be to change this to a variable that can be set in the administration panel.
> 
> Cheers,
> Andrew
> http://drupal.org/node/137255


2009-01-19