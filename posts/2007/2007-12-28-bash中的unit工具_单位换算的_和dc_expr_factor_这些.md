# bash中的unit工具 单位换算的 和dc expr factor 这些计算工具

## bash中的unit工具，单位换算的;和dc，expr，factor，这些计算工具。

## 用好这些工具，还是看info

info dc，etc

dc的在线info
http://sunsite.ualberta.ca/Documentation/Gnu/bc-1.05/bc.html

## unit
我直接 sudo apt-get install units 安装。不知道为什么默认没有装。

> $ units
> 2438 units, 71 prefixes, 32 nonlinear units
> 
> You have: 100ounce
> You want: gram
>         * 2834.9523
>         / 0.00035273962

厉害。我都没看说明就能用。不过这里的盎司是液体的单位。所以用28点多那个。我想用黄金的那个单位盎司，就是30点多的那个。哪位知道怎么弄？

不过不能用中文。这个可以做为一个汉化项目。

> You have: 100加仑
> Unknown unit '加仑'
> You have: 100gallon
> You want: liter
>         * 378.54118
>         / 0.0026417205
> You have: 


unit的man page在网上这里查看。
http://www.ss64.com/bash/units.html

## factor，拆分一个数。我忘了数学上正确的叫法了。
man: http://www.ss64.com/bash/factor.html
factor使用很起怪。输入命令后什么都没有，我以为没这程序呢。但别管，它是在等待你输入一个数字。

$ factor
2008
2008: 2 2 2 251

这个你手工也能分解处来

$ factor
2009
2009: 7 7 41

2009就有些难度。


$ factor
79881759803473980247893224739879298996843587897203478903475928705490452924
factor: ‘79881759803473980247893224739879298996843587897203478903475928705490452924’ 过大

原来计算能力有限制啊。：）

$ factor
97845803427908543278904280
factor: ‘97845803427908543278904280’ 过大

还是不行。

$ factor
20071212
20071212: 2 2 3 7 238943

来个小点的吧。但这个没特色，因为是偶数。

$ factor
20071213
20071213: 20071213

哇塞!我随手输入了一个质数～！！！！ ：）
## dc也没有。dc=desk calculator
dc使用很起怪。输入命令后什么都没有，我以为没这程序呢。
实际你直接输入就好了。

## dc = desk calculator
dc使用很起怪。输入命令后什么都没有，我以为没这程序呢。但别管，它是在等待你输入一个数字。

> $ dc
> 100
> 5
> *
> p
> 500

帮助：http://www.ss64.com/bash/dc.html

## expr有。就是一个计算器

这个不会用。似乎和数学关系不大？

## 还有补充的么？
留言或者直接修改本文。

2007-12-28