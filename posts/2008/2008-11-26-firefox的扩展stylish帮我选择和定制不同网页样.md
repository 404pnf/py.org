# firefox的扩展stylish帮我选择和定制不同网页样


我用这个样式
http://userstyles.org/styles/1635
http://userstyles.org/styles/1635

## 让wikipedia的左侧工具栏到下面去，把更多屏幕留给文章内容
http://userstyles.org/styles/258
Description:
This style sheet moves the navigation section below the article at the Wikipedia (English) Web site.

http://userstyles.org/styles/8743

## minilist slashdot
http://userstyles.org/styles/344

## all styles with minimalist in their names
http://userstyles.org/styles/search/minimalist


## bbc
http://userstyles.org/styles/1598
## google reader mobile
http://userstyles.org/styles/4400
http://userstyles.org/styles/4200

## linux.com
http://userstyles.org/styles/5298

## minimalist templete
http://userstyles.org/styles/5244
Template - Minimalistic
Template - Minimalistic
5944
By IsaacG
Last updated Jul 04 2008
0 installs this week, 24 total.

A generic template.
Use for minimalistic:
- Article (and comments) only
- Full width
- Size 12 font
- Justified
- No background


@namespace url(http://www.w3.org/1999/xhtml);

@-moz-document domain("") {

  body {
     background-image: url() !important;
  /*   background-color: white !important; */
  }

  #primaryContent
  {
/* ******************************************************
 * To resize the column, change the width 
 * on the line below.
 * Set margin-left to 0 to prevent centering of the 
 * article.
 * ******************************************************/
     width: 96% !important;
     margin-left: auto !important;
     margin-right: auto !important;

     padding: 2% !important;
     text-align: justify !important;
     font-size: 12pt !important;
     font-family: arial, sans-serif !important;
     max-width: none !important;
  /*
     position: absolute !important;
     left: 0 !important;
  */
  }

  #hide
    { display: none !important; }

  #upper_level_containers
  {
     width: 100% !important;
     max-width: none !important;
     margin: 0 !important;
     padding: 0 !important;
     float: none !important;
  }

}

## youtube minimalist
http://userstyles.org/styles/4806
## gamil 无法去掉所有广告
http://userstyles.org/styles/713
## douban；把右边栏放到下面去增大正文空间
http://userstyles.org/styles/4452
## @namespace url(http://www.w3.org/1999/xhtml);

@-moz-document domain("people.com.cn") {

@-moz-document url-prefix(http://) {
:link, :visited {font-size:12px !important; font-weight:bold !important; text-decoration: none ! important ; border-style:none !important; background:white !important;}
:link:hover, :visited:hover {font-size:12px !important; font-weight:bolder !important; text-decoration: underline ! important; color:black !important; background:white !important;}
img {display:none !important; font-size:12px !important;display:none ! important; background:white !important;}
embed{font-size:12px !important;display:none !important; background:white !important;}
p {font-size:1em !important; border-width: 0px !important; border-style: none!important; background:white !important;}



2008-11-26