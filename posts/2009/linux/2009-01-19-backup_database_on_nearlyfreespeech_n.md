# backup database on nearlyfreespeech net

backup database on nearlyfreespeech.net

      mysqldump -u jsmith -p -h tingda.db pengyou > backup/pydb

-u username
-p passwrd, don't enter passowrd here
-h host. usually in the form of someting.db

pengyou > backup/pydb

save database pengyou to backup directory with filename pydb

reference: http://www.modwest.com/help/kb6-241.html

import database

     mysql -h localhost DATABASE < YOURFILE.sql

2009-01-19