# -*- coding: utf-8 -*-

# 使用方法 ruby script.rb inputfile output-folder
# 笔记是用markdown格式写的。每一个h1标题代表一篇文章
# 本脚本分割笔记文件到每篇文章一个文件

$file = ARGV[0]
$output_folder = ARGV[1]
def sanitize(title)
  # 不要空格
  # 所有键盘上可以按出来的标点符号，中文和英文的我都替换掉
  # 中文标点所有 http://zh.wikipedia.org/zh/%E6%A0%87%E7%82%B9%E7%AC%A6%E5%8F%B7
  # http://www.ruanyifeng.com/blog/2007/07/english_punctuation.html
  
  
  # 不要用 tr! 和 gsub! 因为如果没有任何替换的话 他们会返回 nil 而不是原字符串！！！
  title = title.tr( ' `~!@#$%^&*()_+=\|][{}"\';:/?.>,<', '_')
  title = title.tr('·～！@#￥%……&*（）——+、|】』【『‘“；：/？。》，《', '_')
  title = title.gsub(/_+/, '_')
  title = title.gsub(/^_+/, '') #如果前几个字符是下划线，去除
  title = title.gsub(/_+$/, '') #如果最后几个字符是下划线，去除
end
def split_markdown_notes
  str = IO.read($file)
  arr = str.split(/^# /)
  arr.shift #arr的第一个元素 \n
  arr.each do |article| 
    #每个article的第一行是题目
    fn = article.split(/\n/)[0]
    fn = sanitize(fn)
    date = Time.now.strftime("%Y-%m-%d")
    fn = date + '-' + fn
    p fn
    #把题目的h1标题写回去。 \A 表示整个字符串的开始
    article.sub!(/\A/, '# ') 
    Dir.mkdir $output_folder unless File.exist?($output_folder)
    File.open("#{$output_folder}/#{fn}.txt", 'w') do |f|
      f.puts article
    end
  end
end

split_markdown_notes
