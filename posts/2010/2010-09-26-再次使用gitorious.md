# 再次使用gitorious

http://gitorious.org/about/faq
How do I point my local Git repository at Gitorious?

Easiest way is to put something like the following in your .git/config file of the repository you wish to push:

[remote "origin"]
       url = git@gitorious.org:project/repository.git
       fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
       remote = origin
       merge = refs/heads/master
and then git push origin master to push the code to Gitorious.


how to generate a ssh key
http://help.github.com/linux-key-setup/


2010-09-26