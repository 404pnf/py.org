# Org-Mode Homepage 站点的css值得我学习

## Org-Mode Homepage 站点的css值得我学习

我喜欢这样目录（table of content）是固定不动的。你上下拖动滚动条，只是正文文字跟着翻页。固定不懂得目录/导航，特别方便用户点链接。不会出现看到文章底部还要翻页回去就为了点目录中另外一个链接。

在20080423，该主页的css我需要的那部分是这样的

      http://orgmode.org/org.css
      
      body {
       margin: 10px 6% 10px 250px;
       font-family: Verdana;
       font-size: 11pt;
       text-align: left;
       background-image: url(img/nrocinu.jpg);
       background-attachment: fixed;
       background-repeat: no-repeat;
       background-position: left top;
      }
      
      h1 {font-size: 14pt;}
      
      #table-of-contents {
          font-size: 85%;
          position: fixed;
          display: bloc;
          left: 10px;
          top: 180px;
          width: 200px;
          line-height: 14pt;
      }
      
      #table-of-contents h2 {
          display:none;
      }
      
      #table-of-contents ul {
          list-style: none; 
          margin: 7px 0px 7px 15px ; 
          padding: 0px;
      }
      
      .title {
          padding-bottom: 7px; 
          margin-bottom: 20px; 
          border-bottom: 1px solid #222;
      }



2008-04-29