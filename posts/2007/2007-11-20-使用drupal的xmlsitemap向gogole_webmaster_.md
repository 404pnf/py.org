# 使用drupal的xmlsitemap向gogole webmaster tools提交sitemap


使用drupal的xmlsitemap向gogole webmaster tools提交sitemap

http://drupal.org/project/xmlsitemap
http://xmlsitemap.darren.oh.name/
这个项目以前叫google sitemap，现在采用同用的标准，可以向google yahoo ask等提交。

安装启用模块后，site configuration会出现相应管理选项
sitemap文件在 http://www.example.org/sitemap.xml

发现它内置了自动像搜索引擎提交更新，还有如果你使用google webmaster tools，需要你先验证你是站点的主人，可以用 Verification link 的方式。就是google给你一个html文件名，你自己的服务器上创建。我当时是ssh上去touch那个文件出来。还需要暂时禁止.htaccess，用mv .htaccess .htaccess1这种方法，不然google无法访问那个verification link。发现这个插件可以帮你创建那个文件。只要把google给你的类似 4534lkjhdhfoa.html 的文件名贴进去就可以了。我没试用这个功能，因为我已经确认过了。其他站点的时候我用一下看看效果。


2007-11-20