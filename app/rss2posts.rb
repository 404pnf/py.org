# -*- coding: utf-8 -*-
require 'rss/2.0'
require 'fileutils'
require_relative 'sanitize_title.rb'
require 'html2markdown'

# USAGE: ruby script.rb RSS-File output-folder
# ref: http://rubyrss.com/

file = ARGV[0]
output = ARGV[1]

File.open(file) do |f|
  response = f.read
  result = RSS::Parser.parse(response, false) # false 是说不去validate rss
  #  puts "Channel: " + result.channel.title
  result.items.each do |item|
    title_o = item.title.to_s.strip
    title = sanitize(title_o).gsub(/_/, ' ')
    fn = sanitize(title).slice(0,60
    pubdate = item.date.xmlschema
    date = pubdate.slice(0,10)
    year = pubdate.slice(0,4)
    
    #把之前emacs org中的标题格式替换为markdown的
    content = item.description.to_s
                  .gsub(/^\* /,'# ')
                  .gsub(/^\*\* /, '## ')
    # 下面两个正则大错特错啦：）！！！
    # 我是想替换行开头的星号，结果忘了星号有特殊含义。
    #    content = content.gsub(/^* /,'# ')
    #    content =content.gsub(/^** /, '## ') #把之前emacs org中的标题格式替换为markdown的
    
    # 有些早期文章有html标签
    raw_html = HTMLPage.new :contents => content
    content = raw_html.markdown
    
    FileUtils.mkdir_p("#{output}/#{year}/}") unless File.exist?("#{output}/#{year}/}")
        
    File.open("#{output}/#{year}/#{date}-#{fn}.txt", "w:utf-8") do |file|
      file.puts "# " + title
      file.puts # empty line
      file.puts content
    end

  end
end # end File.open

=begin
    # jekyll才需要这些
    # Get the relevant fields as a hash, delete empty fields and convert
    # to YAML for the header
    data = {
    'layout' => 'post',
    'title' => title.to_s,
    }.delete_if { |k,v| v.nil? || v == ''}.to_yaml
=end


