# 解决ubuntu gnu linux 下按自动补齐出现warning的问题


404注：这些方法没有能够解决我的问题！！

export LANG=en_US 
export LC_ALL=en_US 
修改locale 
sudo vi /etc/environment 
LANG="en_US.UTF-8" 
LANGUAGE="en_US:en" 
LC_CTYPE="zh_CN.UTF-8"
http://www.javaeye.com/topic/21996

sudo locale-gen en_US.UTF-8
http://approach.javaeye.com/blog/351602


2010-06-13