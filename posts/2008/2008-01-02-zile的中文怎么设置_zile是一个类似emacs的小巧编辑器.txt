# zile的中文怎么设置 zile是一个类似emacs的小巧编辑器

## zile的中文设置。zile是一个类似emacs的小巧编辑器


## 我想问如何在zile中输入中文。 zile 中文设置。

> zile安装完毕后需要修改缺省的配置来显示中文, 一般就是在$HOME/.zilerc中加入或者修改 displayable-characters, 修改成下面的样子
> 
>       displayable-characters = "0x20-0xff"
> 
> http://zhdotemacs.sourceforge.net/emacs/index.html

这个方法不成功。我在ubuntu上安装。用sudo apt-get install zile。
1）默认没有创建.zile或者.zilere
2）我根据man zile，看到配置文件应该是.zile就在home目录下创建了一个.zile文件并把上面那句话加入。不行。
3）我在home目录下创建了一个.zilerc文件，把上面的那句话加入。不行。

## 谁知道怎么回事？


2008-01-02