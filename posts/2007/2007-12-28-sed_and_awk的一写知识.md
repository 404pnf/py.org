# sed and awk的一写知识

## sed and awk
http://www.computing.net/unix/wwwboard/forum/5899.html
这个可能解决了我的问题

If your blocks of texts were separated by blank (null) lines, then the following would work:

sed -e '/./{H;$!d;}' -e 'x;/value2/!d;' myfile > outfile



http://www.linux.com/articles/52837
http://unix.derkeiler.com/Newsgroups/comp.unix.shell/2005-08/0765.html

http://www8.org/w8-papers/5a-search-query/learning/index.html





2007-12-28