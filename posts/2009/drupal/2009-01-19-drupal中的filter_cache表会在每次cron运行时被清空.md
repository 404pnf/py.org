# drupal中的filter cache表会在每次cron运行时被清空

>Filter Cache
>
> The filter cache serves cached filtered content to anonymous and authenticated users alike. The more complex your filters are, the greater the performance gain from this cache. (I have been working on a site which does extensive xsl transformations to turn xml in node bodies into html on the page, making filter caching critical.) Cached filtered content gets cleared out on cron

http://www.zivtech.com/blog/understanding-input-formats

如果情况属实，站点的cron还不能运行过于频繁，否则每次都需要重新生成filter cache，影响站点反应速度吧。


2009-01-19