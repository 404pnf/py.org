# gnu linux下的shell的各种工具太有意思

gnu/linux下的shell的各种工具太有意思
        
        grep "File does not" error.log |awk '{print $13}' | sort | uniq | less

察看一下我apache错误日志中有多少是因为找不到文件，而且排列和去重，之后显示给我看。

除了 awk '{print $13}' 我不明白什么意思 其他都很明了了 

uniq肯定是unique的意思 less是察看


2007-01-04