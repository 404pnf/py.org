# 直接在mysql数据库中删除wordpress的垃圾留言

我用下面这条语句：

      SELECT *
      FROM `comments`
      WHERE comment_approved = 'spam'
      ORDER BY `comments`.`comment_approved` ASC
      LIMIT 0 , 300 
通过观察comments这个表。发现 comment_approved 有3个值， 1，应该是通过了，0，应该是待批准，还有 spam，就是程序认为是垃圾留言。 我的语句是每页列300个，方便在phpmyadmin中全选删除。



      SELECT *
      FROM `comments`
      WHERE comment_approved = '0'
      ORDER BY `comments`.`comment_approved` ASC
      LIMIT 0 , 300 

上面是快速查看待批准的。全选后把准备批准的勾掉就好了。因为代批准中也是绝大多数是垃圾留言。      


2009-01-19