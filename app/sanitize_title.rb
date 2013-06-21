# -*- coding: utf-8 -*-
require 'test/unit'

def sanitize(title)
  # 不要空格
  # 所有键盘上可以按出来的标点符号，中文和英文的我都替换掉
  # 中文标点所有 http://zh.wikipedia.org/zh/%E6%A0%87%E7%82%B9%E7%AC%A6%E5%8F%B7
  # http://www.ruanyifeng.com/blog/2007/07/english_punctuation.html

  title = title.tr(' `~!@#$%^&*()_+=\|][{}"\';:/?.>,<', '_')
    .tr('－·～！@#￥%……&*（）——+、|】』【『‘“”；：/？。》，《', '_')
    .gsub(/_+/, '_')
    .gsub(/^_/, '') # 对开头多个 _ 做处理
    .gsub(/_$/, '') # 多个 _ 做处理
  # tr! 返回 nil 如果没有任何修改，因此也不要使用
  # 谨慎使用gsub!
  # !!!!! gsub!的返回值是修改了的str或者nil，如果
  #没有做任何修改的话就是nil
  # 因此最后需要再直接调一下title让本函数最后的输
  #出是title本身的值 
  # 这个bug困惑了好久好久啊！！
  # gsub!(pattern) → an_enumerator
  # Performs the substitutions of String#gsub in place, 
  # returning str, or nil if no substitutions were performed. 
end


# test

class TestSanitize < Test::Unit::TestCase
  def test_sanitize
    assert_equal 'some_more', sanitize('some!more?'), 'case 1'
    assert_equal 'haha_yoyo', sanitize('(^^*&haha&()(yoyo'), 'case 2'
  end
end
