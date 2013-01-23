# -*- coding: utf-8 -*-
require 'fileutils'
require 'cgi'
require 'find'

# USAGE: ruby script.rb input-dir
# 脚本进入dir，生成文件列表index.html

# TODO: use erb?  but how to?

$inputdir = File.expand_path ARGV[0]

def remove_index
  Find.find(File.expand_path($inputdir)) do |path|
    next unless File.basename(path) == 'index.html'
    p "remove #{path}"
    File.unlink path
  end
end
def remove_date_and_suffix str
  str = str.gsub(/[0-9]{4}-[0-9]{2}-[0-9]{2}-/,'') # remove yyy-mm-dd at the beginning of filename
  str = str.gsub(/\.html$/,'') # remove file suffix
end
DOMAIN = 'http://pengyou.rijiben.org/'
def r_index_generator(dir)
  dir = $inputdir
  Find.find(dir) do |f|
    next unless File.directory?(f)
    links = []
    filelist = Dir.entries(f) # filelist is an array with all files include '.' and '..'
      .reject! {|i| i == '.' or i == '..'}
    filelist.each do |filename|
      url = CGI::escape(filename)
      # url = URI::encode(fn)  在ruby 1.9中会报 URI.escape is obsolete 过时啦
      articleTitle = remove_date_and_suffix(filename)
      link = "<li><a href=\"#{url}\">#{articleTitle}</a></li>\n"
      links << link
      links = links.sort.reverse # new posts on top
      links.join("\n")
    end
    folder = f.to_s.split('/').last
    p "generating #{f}/index.html"
    File.open("#{f}/index.html", "w") do |file|
      file.puts '<!DOCTYPE html><html><head><meta charset="utf-8"><title>' + folder + '</title><link href="/css/local.css" rel="stylesheet"></head><body>'
      file.puts "<h1>#{folder}</h1>"
      file.puts "<ul id=\"index_page\">"
      file.puts '<li><a href="../">..</a></li>'
      file.puts links
      file.puts '<li><a href="../">上一级目录</a></li>'
      file.puts "</ul>"
      file.puts "</body><footer><a href=\"#{DOMAIN}\">主页</a></footer></html>"
    end
  end
end
remove_index
r_index_generator($inputdir)    
