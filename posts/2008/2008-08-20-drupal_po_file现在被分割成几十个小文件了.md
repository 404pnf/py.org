# drupal po file现在被分割成几十个小文件了

<!--tableofcontents-->

drupal po file现在被分割成几十个小文件了

## 现在po file就是翻译文件都被按模块和prfile和theme等分割成几十个小文件了
http://drupal.org/node/239477
http://drupal.org/node/12890

## 理论上那个汉化包直接放到durpal安装目录解开就可以
但我没有成功。
怎么回事

## 这是一个小标题
一个一个导入太麻烦，我的解决方法是
1. 搜索汉化包中所有po文件 放到另一个文件夹
2. cat *.po >zh-all.po ；所有po文件都被链接到一个大文件中
3. 导入时导入zh-all.po就可以了

2008-08-20