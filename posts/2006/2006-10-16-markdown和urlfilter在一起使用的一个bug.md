# markdown和urlfilter在一起使用的一个bug

此bug准备报告给： http://groups.drupal.org/node/243
和mardown, urlfilter2各插件分别的项目页

issue: 如果markdown在urlfilter上，两个一起工作。最后一个纯文字的url不会被urlfilter正确解析。

hack: 我先在解决的方法是，在最后一行随便打一个 http:// 上面的所有需要urlfilter处理的联接都能正常解析了。

history：

两个filter的位置我哪哪个在前哪个在后我都是试验过。感觉让

     a. [link](url of link)

---

     b. urlfilter 直接贴url帮你生成链接
 
完美在同一日记中不干扰工作几乎不可能。

我现在的设置是markdown在urlfilter前面。保证a能工作。但是用了a，b就不工作了。如果不是用a，只用b，b就能很好工作。



2006-10-16