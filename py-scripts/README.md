# biji2txt.rb

Convert notes in a single markdown file to separate file, each file represents an entry in the blog.

使用方法 

    ruby script.rb inputfile output-folder
	
# deploy-site.sh

Shell script depoly site the server.  Using plain scp.

Usage:

     sh script.sh # at root folder of the project

# gen_index.rb

Generate index.html for folders recursily in html folders.  For easing serving a file folder in webserver.

Usage:

    script.rb inputfolder

# index.eruby

Erubis template for index.html

# posts_to_html.rb

Convert markdown-formated text file in posts folder to final html files in html folder.

Usage:  

    script.rb inputfolder outputfolder

Then manually move generated files to year-specific folder.

Bash script shorcut

     mkdir 200{6,7,8,9}
	 
	 mkdir 201{0,1,2}

# post.eruby

Erubis template for each post.

# README.md

You are reading this file!

# rss2posts.rb

Convert rss to posts in text file. 

Used when I migrated the site from drupal.  I used drupal views output rss formate to generate rss for all posts.

# sanitize_title.rb

Utility script that make safer filenames.

# sitemap_generator.rb

Generate sitemap.

   usage: script.rb path
  
# out-of-date

Scripts that I wrote before I knew erubis.
