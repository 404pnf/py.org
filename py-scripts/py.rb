# -*- coding: utf-8 -*-
require 'rss/2.0'
#require 'open-uri'
require 'fileutils'
require 'yaml'
require './sanitize-title.rb'
require 'kramdown'
require 'html2markdown'
# ref: http://rubyrss.com/

file = ARGV[0]
output = ARGV[1]

File.open(file) do |f|
  response = f.read
  result = RSS::Parser.parse(response, false) # false 是说不去validate rss
#  puts "Channel: " + result.channel.title
  result.items.each do |item|
    title = item.title.to_s.strip
    mytitle = sanitize(title).gsub(/_/, ' ')
    fn = sanitize(mytitle)
    fn = fn.slice(0,60)
    pubdate = item.date.xmlschema
    # date: 2012-02-16
    date = pubdate.slice(0,10)
    year = pubdate.slice(0,4)

    content = item.description.to_s
    
    #把之前emacs org中的标题格式替换为markdown的
    content = content.gsub(/^\* /,'# ')
    content = content.gsub(/^\*\* /, '## ')
    # 下面两个正则大错特错啦：）！！！
    # 我是想替换行开头的星号，结果忘了星号有特殊含义。
    #    content = content.gsub(/^* /,'# ')
    #    content =content.gsub(/^** /, '## ') #把之前emacs org中的标题格式替换为markdown的

    # 有些早期文章有html标签
    raw_html = HTMLPage.new :contents => content
    content = raw_html.markdown
=begin
    # jekyll才需要这些
    # Get the relevant fields as a hash, delete empty fields and convert
    # to YAML for the header
    data = {
    'layout' => 'post',
    'title' => mytitle.to_s,
    }.delete_if { |k,v| v.nil? || v == ''}.to_yaml
=end
    FileUtils.mkdir_p("#{output}/#{year}/}") if !File.exist?("#{output}/#{year}/}")
    # Dir.mkdir 不能生成recursive目录，如 Dir..mkdir('1/2/3') 不行的！

    File.open("#{output}/#{year}/#{date}-#{fn}.txt", "w:utf-8") do |file|
      #file.puts data
      #file.puts "---"
      #file.puts
      file.puts "# " + mytitle
      file.puts
      file.puts content
    end

    html_content = Kramdown::Document.new(content, :auto_ids => false).to_html

    html_header = <<EOF
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>#{mytitle}</title>
    <link href="/css/local.css" rel="stylesheet">
    </head>
    <body>
EOF
    
    html_footer = <<EOF
    </body>
    <footer>
    <a href="/">Home</a>
    </footer>
</html>
EOF

    # 同时生成html页面啦 hiahia
    FileUtils.mkdir_p("html-posts/#{year}/}") if !File.exist?("html-posts/#{year}/}")
    File.open("html-posts/#{year}/#{date}-#{fn}.html", "w:utf-8") do |file|
      #file.puts data
      #file.puts "---"
      #file.puts
      file.puts html_header
      file.puts
      file.puts "<h1>#{mytitle}</h1>"
      file.puts
      file.puts html_content
      file.puts
      file.puts html_footer
    end
    
  end      # end each
end # end File.open


