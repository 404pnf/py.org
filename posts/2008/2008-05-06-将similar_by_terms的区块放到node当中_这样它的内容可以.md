# 将similar by terms的区块放到node当中 这样它的内容可以出现在rss输出里

## 将similar by terms的区块放到node当中，这样它的内容可以出现在rss输出里

## 如果你的similiar by terms模块是5.x系列有bug的版本

参考我这篇文章: http://pengyou.rijiben.org/node/2198

## Moving Similar By Terms block onto the node

> Moving Similar By Terms block onto the node
> http://drupal.org/node/183511
> 
> Please see http://drupal.org/node/192611#comment-642390 and close this issue or ask for help in the forums.
> 
> 
> 1
> NikLP - November 29, 2007 - 02:42
> 
> Dude you can do that with theming. You should create a node template for the node type that you want to have the similar entries on, then you can easily position a new region in the template and place the block there. Alternatively, you can call a block manually in template file, or in your template.php file you could create a new variable.
> 
>This is all done using a normal block, but just being a bit more flexible with your options. I suggest you get hold of the Pro Drupal book, or read the free theming chapter at that link which might help you out.

参照这个做法我的需求就解决了。

现在的问题是我要阅读并学习如何“palce the block there”。

## 在drupal的theme（模板）中调用任意block（区块）的方法

成功了 哈哈哈

搜索call a block in theme

> Placing the contents of a block in any location
> http://drupal.org/node/26502
> 
> 
> To specify which block from which module, you simply edit the two following variables in the first line:
> 
> module_name = The name of the module
> The number = Is the $delta of the block
> 
这2个参数你去/admin/build/block中点你要添加的那个区块，url中就会显示它的模块名和$delta。比如我要调用similarterms的模块，就编辑这个模块，url最后是

       similarterms/2


那我就用

      <?php $block = module_invoke('similarterms', 'block', 'view', 2);print $block['content'];?>

好了。实现我要的效果了。：）


2008-05-06