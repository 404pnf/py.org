# 和小拉修改了drupal的survey模块让他更时候公司用户使用

和小拉修改了drupal的survey模块让他更时候公司用户使用

目的公司希望调查表页面和公司页面表现形式更一致。也不想暴露是使用了其他程序而不是公司。

我开始有意见。后来想，改好了可以做服务，专门给有这种想法的公司和个人用。

开始修改。我写简单流程。小拉补充

+ 浏览survey module 的cvs http://cvs.drupal.org/viewcvs/drupal/contributions/modules/survey/

找到 

 	$form['result_page'] = 
      	array(
            '#type' => 'textfield', 
            '#title' => t('Path for "thank you" page'), 
            '#default_value' =>  $node->result_page, 
            '#description' => t("This page is displayed after the form is submitted.  If you are not using clean URLs, specify the part after '?q='.  If unsure, specify nothing."),
            '#size' => 70, 
            '#maxlength' => 70, 

顾名思义result_page应该是结果页

和它有关的行

+ 找到

	if ($survey->result_page) {
      	 drupal\_goto($survey->result\_page);
    		}
  
    		drupal\_set\_message(t('Thank you for your submission'), 'success');
 		\\这行是说 提交成功
   	 	drupal_goto('node/'.$survey->nid);
		\\ 这行说提交后返回那个页面 默认看来是留在调查表那个node
		\\ 我们把它修改为做好的调查提交成功的页面就可以了
    		drupal\_goto('http://gongsi.com/tijiaochenggong.htm');

            
+  完成

+  你也可以直接去drupal数据库中修改survey这个表。这个表很简单，就3个值：

 	       nid  	 fid  	 email          result_page
		      547 	 1 	 1@1.com 	http://www.mougegongsi.com/survey/response.htm

修改这里result_page的价值和直接修改代码效果一样。
                                                                
                                                          
那么如何实现前台表单是否为空，如果调查的必添项目没有添，告诉用户需要添，而且也不暴露后台用了其他网站的程序？这个小拉一个人做的。我不懂。你快写吧。


现在我准备建一个站点给公司提供网上调查问卷收集和统计的服务。：）
	                 

2007-03-14