# 让网站上的图片转起来 请懂javascript的朋友点评一下这个代码

请懂javascript的朋友点评一下这个代码

去一个有图片的网站 用下面的代码替换地址栏中的东西然后按回车。这个站点的图片就会转圈。
在这里不行。：）但可以看到用户头像动了一下但是没有转。大家可以去试验一下 http://google.com


> javascript:R=0; x1=.1; y1=.05; x2=.25; y2=.24; x3=1.6; y3=.24; x4=300; y4=200; x5=300; y5=200; DI=document.images; DIL=DI.length; function A(){for(i=0; i-DIL; i++){DIS=DI[ i ].style; DIS.position='absolute'; DIS.left=Math.sin(R*x1+i*x2+x3)*x4+x5; DIS.top=Math.cos(R*y1+i*y2+y3)*y4+y5}R++}setInterval('A()',5); void(0);

via http://blog.outer-court.com/archive/2007-01-31-n71.html



2007-02-05