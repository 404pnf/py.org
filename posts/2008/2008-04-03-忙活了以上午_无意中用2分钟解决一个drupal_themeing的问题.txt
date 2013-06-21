# 忙活了以上午 无意中用2分钟解决一个drupal themeing的问题

## 忙活了一上午，无意中用2分钟解决一个drupal themeing的问题

http://www.drupalchina.org/node/1898#comment-5399

我就是想在drupal的聚合页面（比如首页/node /blog /term 下）只显示文章标题，而单独的文章页面显示全文

改一下上面的

在node.tp.php中用
      <?php if ($page == 1) print $content ?>

就是如果这个node是单独的一个page，那么打印$content。也就是说，如果不是单独的，就不打印。成功了。：）

我开始的时候重读page.tpl.php和node.tpl.php的文档，使用view就行各种操作。足足搞了2个小时。

views这个模块值得研究，但是我怎么还是没搞定啊。

有了这句先凑活用着。：）

顺便在聚合页也不显示作者了

     <?php if ($page == 1)print $submitted ?>

大家举一反三去。哈哈。



2008-04-03