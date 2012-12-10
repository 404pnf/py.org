# -*- coding: utf-8 -*-

require_relative 'sanitize_title.rb'

# 使用方法 ruby script.rb inputfile output-folder
# inputfile, 笔记是用markdown格式写的。每一个h1标题代表一篇文章
# 本脚本分割笔记文件到每篇文章一个文件
$file = ARGV[0]
$output_folder = File.expand_path ARGV[1]
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
