# -*- coding: utf-8 -*-
require 'fileutils'
require 'cgi'

# usage: script dir

# 脚本进入dir，生成文件列表index.html
# 脚本进入dir的第一级子目录，生成对应的文件列表index.html

# dir目录所有文件和目录
# 返回文件名数组
def getFileList 
  # ruby中对中文排序是把中文转成GBK并按拼音排
  #这个拼音排序也是不准确的，因为：
  #1、有些汉字ruby不知道拼音是什么，排到最后
  #2、汉字多音字，就看选哪个出来排了
  #但是，聊胜于无啊：）
  #Dir.entries('.').sort {|x,y| x.encode("GBK", "utf-8") <=> y.encode("GBK", "utf-8")}
  #无法使用，有无法转为gbk的字符，但不知道是什么
  # index_generator.rb:18:in `encode': U+200F from UTF-8 to GBK (Encoding::UndefinedConversionError)
  Dir.entries('.').sort 
end
# 只收集当前目录中的目录名称
# 返回目录名称数组
def getFolderList
  list = Dir.entries('.').reject {|f| !File.directory?(f)}
  list.reject {|d| d == '.' or d == '..'} # 不要用if
end
# 生成url
# 输入 当前目录所有文件名数组
# 输出 当前目录下生成index.html文件
def collectLinks(filenames)
  links = []
  filenames.reject! do |fn| 
    fn == '.' or fn == '..' or fn == 'index.html'
  end # 去掉当前目录，上级目录和index.html(之前运行过本脚本会有已经生成的index.html不应该包括在内)
  filenames.each do |fn|
    url = CGI::escape(fn)
    # url = URI::encode(fn)  在ruby 1.9中会报 URI.escape is obsolete 过时啦
    articleTitle = fn.sub(/-20..*$/, '') # 文件名类似 钱胜杰-母与子-2011-10-05-18635.html 去掉后边部分
    link = "<li><a href=\"#{url}\">#{articleTitle}</a></li>"
    links << link
  end
  links
end
def writeIndex(links)
  abs_path = Dir.pwd # 返回当前目录的绝对路径
  folder = abs_path.split('/').last # 当前目录的名字
  File.open("#{abs_path}/index.html", "w") do |f|
    f.puts '<!DOCTYPE html><html><head><meta charset="utf-8"><title>' + folder + '</title><link href="/css/local.css" rel="stylesheet"></head><body>'
    f.puts "<h1>#{folder}</h1>"
    f.puts "<ul id=\"index_page\">"
    f.puts links
    f.puts "</ul>"
    f.puts '</body><footer><a href="/">主页</a></footer></html>'
  end
end
# 进入、处理和退出子目录
# 只是进入一级目录
def enterAndExit(dirname)
  Dir.chdir(dirname)
  writeIndex(collectLinks(getFileList)) # 生成最高一级目录的index.html
  Dir.chdir('..')
end
def main 
  inputDir = ARGV[0].sub('/','') # de-slashing
  Dir.chdir(inputDir)
  getFolderList.each do |folder|
    enterAndExit(folder)
  end
end


# 开始工作吧 ：）
main()
