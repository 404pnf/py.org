# apache中做简单web目录访问限制

[tags]apache[/tags]

	# Authorize for setup
	
AuthType Basic
	    AuthName "phpMyAdmin Setup"
	    AuthUserFile /etc/phpmyadmin/htpasswd.setup
	    Require valid-user
