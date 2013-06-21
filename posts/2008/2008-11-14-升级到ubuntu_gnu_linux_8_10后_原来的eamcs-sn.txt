# 升级到ubuntu gnu linux 8 10后 原来的eamcs-snapshot-gtk不能用了 而起暂时只能cvs下载源码安装

升级到ubuntu gnu/linux 8.10后，原来的eamcs-snapshot-gtk不能用了！而起暂时只能cvs下载源码安装。

以后不再升级ubuntu普通版本了，只升级到Long term support的版本。

昨天升级的。今天一开机没发现什么变化。开emacs写点东西，告诉我没有了。查了一下，没有了！只剩下终端下的了。用“新立得”安装软件，在ubuntu库中，emacs-snapshot对应的就是eamcs23，或者说emacs-unicode，或者说emacs-from-cvs，反正都是一个意思，这是一个从根儿上就支持unicode的版本。用它最放心。无任何中文问题（不需做任何中文设置的意思）。可不让装，说有2个库的dependency无法解决。

只能自己cvs checkout出来装了。

也好。：）cvs出来的更加新啊。：）

安装方法在这里： <http://www.emacswiki.org/cgi-bin/emacs-en/EmacsFromCVS>

哇，下载出来速度好快呀。：）

      ./configure

报没有makeinfo，这makeinfo怎么装啊。没有叫makeinfo的软件啊。而且我有了info也有了make。查找后发现装texinfo就可以了。是tex。

texinfo和文档竟然是non-free!!!?管不了那么多了。装上emacs再说。

还是不行。

只能加--without-makeinfo了：（

       configure: error: You do not seem to have makeinfo >= 4.6, and your
       source tree does not seem to have pre-built manuals in the `info' directory.
	Either install a suitable version of makeinfo, or re-run configure
	with the `--without-makeinfo' option to build without the manuals.

只后还是有库没有，继续--without-一个库 --without-另一个库

然后 

make bootstrap
make
make install

完毕      



2008-11-14