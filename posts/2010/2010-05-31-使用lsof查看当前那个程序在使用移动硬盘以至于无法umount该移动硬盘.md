# 使用lsof查看当前那个程序在使用移动硬盘以至于无法umount该移动硬盘

      $ lsof|grep 1TB
      thunar    12146     404   15r      DIR       8,17     8192        5 /media/1TB.mypassport
这里我的移动硬盘名字里包含1TB这个词，看到了，是thunar在用它

      $ pkill -9 thunar
直接杀死所有thunar进程。管不了那么多了。就想赶紧卸载这块盘。

      $ lsof|grep 1TB
没有任何结果。证明没有程序在打开1TB上面的任何文件

      $ sudo umount 1TB.mypassport/
现在可以成功umount这块移动硬盘啦


2010-05-31