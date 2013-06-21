require 'rss/2.0'
require 'fileutils'
require_relative './sanitize_title.rb'
require 'reverse_markdown'

# USAGE: ruby script.rb RSS-File output-folder
# ref: http://rubyrss.com/

file = ARGV[0]
output = ARGV[1]

f = File.read file
rss = RSS::Parser.parse(f, false) # false 是说不去validate rss

articles_tuple = rss.items.map do |item|
  # title and filename
  title_o = item.title.to_s.strip
  title_in_filename = sanitize(title_o)
  title_md = '# ' + title_in_filename.gsub(/_/, ' ')

  # date
  # item.date is a Time Object
  # .strftime("%Y-%m-%d")
  # => "2006-01-01"
  pubdate = item.date.strftime("%Y-%m-%d")
  year, month, day = pubdate.split('-')
  
  # filename
  filename = "#{pubdate}-#{title_in_filename}".slice(0,48)
  
  # content 
  # 把之前emacs org中的标题格式替换为markdown的
  content_raw = item.description.to_s
  .gsub(/^\* /,'# ')
  .gsub(/^\*\* /, '## ')
  # 下面两个正则大错特错啦：）！！！
  # 我是想替换行开头的星号，结果忘了星号有特殊含义。
  #    content = content.gsub(/^* /,'# ')
  #    content =content.gsub(/^** /, '## ') #把之前emacs org中的标题格式替换为markdown的
  # 有些早期文章有html标签
  content_md = ReverseMarkdown.parse content_raw
  # 结尾加上个空行和撰写时间
  content = "#{title_md}\n\n#{content_md}\n\n#{pubdate}"
  
  # final tuple 
  [title_md, filename, content, year, month, day]
end    

articles_tuple.each do |article|
  title, filename, content, year, month, day = article
  FileUtils.mkdir_p("#{output}/#{year}") unless File.exist?("#{output}/#{year}")
  p "generating #{output}/#{year}/#{filename}.txt ."   
  File.write("#{output}/#{year}/#{filename}.txt", content)

end 

puts "共有#{articles_tuple.size}篇文章。"
