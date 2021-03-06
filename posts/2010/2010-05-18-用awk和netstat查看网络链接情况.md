# 用awk和netstat查看网络链接情况

## 最佳答案：
http://www.cyberciti.biz/tips/netstat-command-tutorial-examples.html


----

## 中文资源：

      netstat -an | awk '/^tcp/{ A[$NF]++} END{ for (a in A) print a, A[a]}'
      netstat -an |awk '/LISTEN/{next};/^tcp/{s=split($5, N,":"); A[N[s-1]]++} END{ for (a in A) print a, A[a]}'  
参考和参数详细解释： http://hi.baidu.com/thinkinginlamp/blog/item/afbcab64b1ad81f3f6365453.html

> 先来看看netstat：
> 
> netstat -n
> 
> Active Internet connections (w/o servers)
> Proto Recv-Q Send-Q Local Address           Foreign Address         State
> tcp        0      0 123.123.123.123:80      234.234.234.234:12345   TIME_WAIT
> 
> 你实际执行这条命令的时候，可能会得到成千上万条类似上面的记录，不过我们就拿其中的一条就足够了。
> 
> ------------------------------------------------------------------
> 
> 再来看看awk：
> 
> /^tcp/
> 滤出tcp开头的记录，屏蔽udp, socket等无关记录。
> 
> state[]
> 相当于定义了一个名叫state的数组
> 
> NF
> 表示记录的字段数，如上所示的记录，NF等于6
> 
> $NF
> 表示某个字段的值，如上所示的记录，$NF也就是$6，表示第6个字段的值，也就是TIME_WAIT
> 
> state[$NF]
> 表示数组元素的值，如上所示的记录，就是state[TIME_WAIT]状态的连接数
> 
> ++state[$NF]
> 表示把某个数加一，如上所示的记录，就是把state[TIME_WAIT]状态的连接数加一
> 
> END
> 表示在最后阶段要执行的命令
> 
> for(key in state)
> 遍历数组
> 
> print key,"\t",state[key]
> 先来看看netstat：
> 
> netstat -n
> 
> Active Internet connections (w/o servers)
> Proto Recv-Q Send-Q Local Address           Foreign Address         State
> tcp        0      0 123.123.123.123:80      234.234.234.234:12345   TIME_WAIT
> 
> 你实际执行这条命令的时候，可能会得到成千上万条类似上面的记录，不过我们就拿其中的一条就足够了。
> 
> ------------------------------------------------------------------
> 
> 再来看看awk：
> 
> /^tcp/
> 滤出tcp开头的记录，屏蔽udp, socket等无关记录。
> 
> state[]
> 相当于定义了一个名叫state的数组
> 
> NF
> 表示记录的字段数，如上所示的记录，NF等于6
> 
> $NF
> 表示某个字段的值，如上所示的记录，$NF也就是$6，表示第6个字段的值，也就是TIME_WAIT
> 
> state[$NF]
> 表示数组元素的值，如上所示的记录，就是state[TIME_WAIT]状态的连接数
> 
> ++state[$NF]
> 表示把某个数加一，如上所示的记录，就是把state[TIME_WAIT]状态的连接数加一
> 
> END
> 表示在最后阶段要执行的命令
> 
> for(key in state)
> 遍历数组
> 
> print key,"\t",state[key]
> 打印数组的键和值，中间用\t制表符分割，美化一下。

2010-05-18