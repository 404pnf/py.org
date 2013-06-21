require 'find'

# usage: script.rb path
# generate4 sitemap.txt for inputfoder
# run this script for html/ folder
# in html/, there shoud be a symbolic link to this script

path = ARGV[0]
DOMAIN = 'http://pengyou.rijiben.org'
filenames = []
Find.find("#{path}") do |file|
  if file =~ /\.html/
    file = file.sub(/^\./, DOMAIN)
    p file
    filenames << file
  end
  File.open("sitemap.txt", 'w') do |f|
    f.puts filenames
  end
end
p "sitemap.txt is generated at #{Dir.pwd}"  
