# 查寻某个用户在wikipedia中都做了些什么的方法

## 查寻某个用户在wikipedia中都做了些什么的方法

我用sed

      sed -n '/Shizhao/p' zhwikibooks-20071129-pages-meta-current.xml |uniq -u|less

看看shizhao同学在zhuwikibooks中都干嘛了。

得到结果多少跟你用那个数据库有关。我用的crrent page和少量meta那个。记录用户的数据很少。




2007-12-28