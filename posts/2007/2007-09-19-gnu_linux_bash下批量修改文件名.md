# gnu linux bash下批量修改文件名

Rename a bunch of file extensions
e.g. change *.txt into *.htm
  for f in *.txt; do mv ./"$f" "${f%txt}htm"; done

`mv' can move only regular files across filesystems.

http://webtools.live2support.com/linux/mv.php

2007-09-19