# 增加drupal中rss输出条目的数量

## 增加drupal中rss输出条目的数量

>How to increase items per feed
>innovationcreation - March 2, 2007 - 14:37
>
>I found the way to increase items per feed in 4.7.x
>
>Follow good back up and commenting practice on files/system!
>- Edit system.module
>- Seach for text "items per feed"
>- Add new value to array list (I added 999)
>
>'#options' => drupal_map_assoc(array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 20, 25, 30, 999)),
>
>- Save and go to Administer/Settings and selecting "RSS feed settings" to see change. Select your new number.
>- I think you may have to either wait for or manually run the cron.php job for the feeds to reflect new items per feed number.
>
>John Blue
>jlblue@TruffleMedia.com
>
>http://drupal.org/node/57569#comment-206414


原来我以前自己回答过别人这个问题呢：）我都忘记了，这回还得再查一遍。

>> Is there some other way to
>404 - August 16, 2007 - 12:20
>
>> Is there some other way to define the number of items in the RSS feed?
>
>Yes. Read this: http://drupal.org/node/57569#comment-206414
>
>In drupal 5.x , the path to system.module is module/system/system.module search keyword 30, the first one is for cache, the second one is for rss feed. Follow the instruction in the link above.
>
>http://drupal.org/node/164298#comment-262529

但是在drupal 6中似乎这个方法不管用了。我搜索了system.module，里面没有设定的数目啊？！

谁知道转移到哪里去了？

## drupal 6 中增加rss输出数目的方法

看着篇文章 http://pengyou.rijiben.org/node/2428

2008-06-02