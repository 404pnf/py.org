# drupal中将待批准留言和文章通过rss输出给管理员的模块

drupal中将待批准留言和文章通过rss输出给管理员的模块

可惜没有5.0和6.0的版本。有能力的朋友请port一下。


> Admin RSS
> 
> Administration · Modules
> webgeer - February 1, 2006 - 15:19
> Features
> 
> The AdminRSS module creates RSS feeds for the administrative information for Drupal websites.
> 
> These feeds are protected with a keystring that must be set in admin/settings/adminrss page. The resulting pages can then be read at:
> 
>     * adminrss/node/<keystring> - RSS feed for unapproved nodes
>     * adminrss/comment/<keystring> - RSS feed for unapproved comments 
> 
> This can be most useful if you are managing a number of different drupal websites and rather than visiting each one to see if there are comments/nodes that need to be approved you can use an RSS reader to find out.
> http://drupal.org/project/adminrss


2008-08-07