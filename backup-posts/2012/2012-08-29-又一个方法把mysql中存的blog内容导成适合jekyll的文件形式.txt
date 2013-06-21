# 又一个方法把mysql中存的blog内容导成适合jekyll的文件形式

>       conn = Mysql.real_connect("localhost", "user", "pass", "db")
>       res = conn.query("select slug, title, summary, body, created_at, id from posts")
>       while row = res.fetch_row do
>       file = Date.parse(row[4]).strftime("%Y-%-m-%-d") + '-' + row[0] + ".html"
>         File.open(file, 'w') do |f|
>       	f.write("---\n")
>       	f.write("layout: post\n")
>       	f.write("title: \"" + row[1] + "\"\n")
>       	f.write("disqus_id: " + row[5] + "\n")
>       	f.write("---\n")
>       	f.write(row[3])
>       	end
>       	end
>       	res.free
>       conn.close
> http://openmymind.net/2011/10/11/This-Blog-Is-Now-Hosted-On-Github/

