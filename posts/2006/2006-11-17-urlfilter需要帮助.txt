# urlfilter需要帮助

下面的代买来自drupal的urlfilter模块
我估计这是替换纯文本的url为 a href="url"> url 

我现在希望替换后中间的url去掉前面的http:// 这个 请协助。

      $text = preg_replace_callback("!(<p>|<li>|<br\s*/?>|[ \n\r\t\(])((http://|https://|f$
      $text = preg_replace("!(<p>|<li>|<br\s*/?>|[ \n\r\t\(])([A-Za-z0-9._-]+@[A-Za-z0-9._$
      $text = preg_replace_callback("!(<p>|<li>|[ \n\r\t\(])(www\.[a-zA-Z0-9@:%_+*~#?&=.,/$
      $text = substr($text, 1, -1);
      

源代码怎么没在cvs.drupal.org上
http://drupal.org/cvs?file=/modules/urlfilter/CHANGELOG.txt

这个有个小bug，在管理里面调整max length不管用，必须直接改代码中的设置。我就是这么改的，提交了bug report。现在设置为20鸽字符。考虑到http://就占了7个，非常不爽。

2006-11-17