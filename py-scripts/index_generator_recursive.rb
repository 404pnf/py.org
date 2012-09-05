# -*- coding: utf-8 -*-
require 'fileutils'
require 'cgi'
require 'find'

# usage: script dir
# 脚本进入dir，生成文件列表index.html

$inputdir = ARGV[0].chomp('/')
def remove_index
  Find.find(File.expand_path($inputdir)) do |path|
    next unless File.basename(path) == 'index.html'
    p "remove #{path}"
    File.unlink path
  end
end
def remove_date_str str
  str = str.gsub(/[0-9]{4}-[0-9]{2}-[0-9]{2}-/,'') # remove yyy-mm-dd at the beginning of filename
  str = str.gsub(/\.html$/,'') # remove file suffix
end
def r_index_generator(dir)
  dir = File.expand_path($inputdir)
  # get all path
  dir_arr = []
  Find.find(dir) do |f|
    next unless File.directory?(f)
    dir_arr << f
  end
  dir_arr.each do |d|
    filelist = Dir.entries(d) # filelist is an array with all files include '.' and '..'
    filelist.reject! {|f| f == '.' or f == '..'}
    links = []
    filelist.each do |filename|
      url = CGI::escape(filename)
      # url = URI::encode(fn)  在ruby 1.9中会报 URI.escape is obsolete 过时啦
      articleTitle = remove_date_str(filename)
      link = "<li><a href=\"#{url}\">#{articleTitle}</a></li>\n"
      links << link
      links = links.sort.reverse # new posts on top
      links.join("\n")

    end
    folder = d.to_s.split('/').last
    p "generating #{d}/index.html"
    File.open("#{d}/index.html", "w") do |f|
      f.puts '<!DOCTYPE html><html><head><meta charset="utf-8"><title>' + folder + '</title><link href="/css/local.css" rel="stylesheet"></head><body>'
      f.puts "<h1>#{folder}</h1>"
      f.puts "<ul id=\"index_page\">"
      f.puts '<li><a href="../">上一级目录</a></li>'
      f.puts links
      f.puts '<li><a href="../">上一级目录</a></li>'
      f.puts "</ul>"
      f.puts '</body><footer><a href="http://pengyou.rijiben.org/">主页</a></footer></html>'
    end
  end
end

remove_index
r_index_generator($inputdir)    

