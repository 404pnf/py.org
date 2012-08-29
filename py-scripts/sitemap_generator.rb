require 'find'

# usage: script.rb 
# generate4 sitemap.txt for inputfoder
# run this script in html/ folder
# in html/, there shoudl be a symbolic link to this script

filenames = []
Find.find(".") do |file|
  if file =~ /\.html/
    file = file.sub(/^\./, 'http://pengyou.rijiben.org')
    p file
    filenames << file
  end
  File.open("sitemap.txt", 'w') do |f|
    f.puts filenames
  end
end
  
