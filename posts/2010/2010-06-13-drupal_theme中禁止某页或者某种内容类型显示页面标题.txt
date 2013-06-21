# drupal theme中禁止某页或者某种内容类型显示页面标题


http://drupal.org/book/export/html/426482

      <?php
      function THEMENAME_preprocess_page(&$vars) {
      
        // Titles are ignored by content type when they are not desired in the design.
        $vars['original_title'] = $vars['title'];
        if (!empty($vars['node']) && in_array($vars['node']->type, array('page', 'story'))) {
          $vars['title'] = '';
        }
      
      }
      ?>
      
      
      <?php
      function THEMENAME_preprocess_page(&$vars) {
      
        // Titles are ignored on the front page.
        $vars['original_title'] = $vars['title'];
        if ($vars['is_front']) {
          $vars['title'] = '';
        }
      
      }
      ?>
      


2010-06-13