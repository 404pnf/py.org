# nearlyfreespeech net上内存用完的问题

Fatal error: Allowed memory size of 33554432 bytes exhausted (tried to allocate 2048 bytes) in /data/f4/content/ziyouwenhua/public/includes/theme.inc on line 724

I have this error msg on my site:

Fatal error: Allowed memory size of 33554432 bytes exhausted (tried to allocate 2048 bytes) in /data/f4/content/ziyouwenhua/public/includes/theme.inc on line 724

I am running 5 sites out of a single drupal code base. The traffic is very light, less then 50mb for all sites. 

This is line 724

       	     function drupal_find_theme_functions($cache, $prefixes) {
	             $templates = array();
		             $functions = get_defined_functions();
      
**line 724**      foreach ($cache as $hook => $info) {
               foreach ($prefixes as $prefix) {
     	              if (!empty($info['pattern'])) {
		            	$matches = preg_grep('/^'. $prefix .'_'. $info['pattern'] .'/', $functions['user']);
                    if ($matches) {
      

I didn't enable much modules. I always try to keep site as lean as possible. I also enabled cache in drupal, both page catch, block catch, css/js aggregation and compress.

What seems to be the problem?

还没有解决。

TIA.


2008-08-27