# rdiff-backup 远程增量备份 简单到只需 rdiff-backup host net target-dir

rdiff-backup: 远程增量备份，简单到只需“rdiff-backup / host.net::/target-dir"”

> rdiff-backup
> 
> A remote incremental backup of all your files could be as easy as
> "rdiff-backup / host.net::/target-dir"[disclaimer]

上面给的命令例子是备份本地机器上的根目录所有内容到远程主机的target-dir下。对上面命令的[disclaimer在这里](http://www.nongnu.org/rdiff-backup/fineprint.html)。

> What is it?
> 
> rdiff-backup backs up one directory to another, possibly over a > network. The target directory ends up a copy of the source directory, > but extra reverse diffs are stored in a special subdirectory of that > target directory, so you can still recover files lost some time ago. > The idea is to combine the best features of a mirror and an > incremental backup. rdiff-backup also preserves subdirectories, hard > links, dev files, permissions, uid/gid ownership, modification times, > extended attributes, acls, and resource forks. Also, rdiff-backup can > operate in a bandwidth efficient manner over a pipe, like rsync. Thus > you can use rdiff-backup and ssh to securely back a hard drive up to a > remote location, and only the differences will be transmitted. > Finally, rdiff-backup is easy to use and settings have sensical > defaults.
> 
> http://www.nongnu.org/rdiff-backup/


2008-08-15