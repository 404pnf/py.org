# 在nearlyfreespeech net用一套drupal支持多站点 并启用clean url总算成功了

## 在nearlyfreespeech.net用一套drupal支持多站点，并启用clean url总算成功了

一套代码支持多个站点早就成功了。但是从今年年初开始我的一些站点无法用clean url了。今天，再抽出些时间研究这个问题。最后，通过删除原有.htaccss文件内容，放入下面文件内容，粘贴上去，再**删除复制粘贴上去时增加了的换行符**，比如本来是一行的被分为两行了，这样会造成服务器报语法错误。前些日子的错误可能都是因为这个原因。

http://cvs.drupal.org/viewvc.py/drupal/drupal/.htaccess?view=markup

好了。那么本站，也要转到drupal 6那个代码了。

用一套代码支持多个站点好处是：

1、升级和维护程序方便。只用作一次。
我现在一套代码支持近10个站点。我可不想同样事情做10次！时间是最珍贵的。人不应该干不想干的机械性的事情。

2、节省硬盘空间啊。
虽然drupal本身解压加上常用模板也就3mb左右，那10个站点也20mb了。100个？1000呢？！反正我从30mb减少到3mb。按现在我服务商的收费标准，就是每个月1g是1美元。3mb就是0.003美元。就是我用100个月（9年的时间）才30美分，2元人民币。哈哈。

2008-03-24