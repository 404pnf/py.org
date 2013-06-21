# 如何把epiphany的书签转换成mozilla firefox delicious可以导入的书签

http://www.gnome.org/projects/epiphany/documentation/faq.html

> 4.6 How can I export bookmarks to use them with Mozilla?

> To export your bookmarks into the format used by Mozilla, you need to save this XSL stylesheet as ephy2moz.xsl, and issue the following command on a shell prompt:

> xsltproc -o bookmarks.html ephy2moz.xsl ~/.gnome2/epiphany/bookmarks.rdf


2007-07-31