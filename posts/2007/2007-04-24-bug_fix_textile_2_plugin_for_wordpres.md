# bug fix textile 2 plugin for wordpress lyceum chinese and accented characters can t display properly

Textile 2 plugin for wordpress works out of box with lyceum 0.34, if your are using english.

But there's a bug in textile:

If you are using Chinese, like me, or language with accented characters, it misbehaves. Chinese become unreognized characters.

Here's how to fix it:

edit textile.php, search for keyword "char_encoding "

you will see

       // head_offset sets the amount to increase     header level (i.e. h1. be$
           $textile->options['head_offset'] = $this->settings['0'];
           $textile->options['char_encoding'] = $this->settings['Encoding'];
           $textile->options['input_encoding'] = $this->settings['InputEncoding];

Change Encoding and InputEncoding to language code you are using, e.g utf-8, as it's the default with lyceum installation? Anyway, I always use utf-8.

Porblem fixed.

reference:
http://drupal.org/node/6881
5 submitted by Gabriel Radic on July 30, 2004 - 10:37
If you are using UTF-8, changing the char_encoding option is recomended and it works well.
http://drupal.org/node/11357
6 submitted by jhriggs on March 21, 2005 - 16:32
There were two things going on here. First, the module did not specify utf-8 as the charset for the Textile class. Second, there was a bug in TextilePHP that caused it to ignore false values for char_encoding. This is all addressed in the latest files in CVS. The lastest version for both 4.5 and 4.6 should work properly.

This is an obscure bug. I couldn't search anything useful in google. At last I turn to drupal.org because I know drupal ported it as a module. I read issues with that module and found out how to fix it. 

2007-04-24