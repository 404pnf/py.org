# phpsh让捣鼓php php开发 php测试更简单

http://www.phpsh.org
类似ruby一个开发环境的工具
很好

      ccheever@bamboo:~$ phpsh
      Starting php
      type 'h' or 'help' to see instructions & features
      php> h
      -- Help --
      Type php commands and they will be evaluted each time you hit enter. Ex:
      php> $msg = "hello world"
      
      Put = at the beginning of a line as syntactic sugar for return. Ex:
      php> = 2 + 2
      4
      
      php> = 3 + 3
      6
      php> = $_
      6
      php> $x = $_
      
      php> print $x
      6
      php> = func
      func_get_arg  func_num_args function_exists  
      func_get_args function
      php> = function_exists
      function_exists
      php> = function_exists('function_exists')
      true
      php> d array_merge
      
      
      php> = 2 +
       ... 2
       4
       php> = array(array(1,2,3), array("a" => "b", "c" => "d"), "e", "g")
       array(
      0 => array(
       0 => 1,
        1 => 2,
      2 => 3,
        ),
       1 => array(
        "a" => "b",
      "c" => "d",
        ),
       2 => "e",
      3 => "g",
      )
       php> q
      


2010-05-12