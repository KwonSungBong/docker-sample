

dump

##########################################

https://gist.github.com/spalladino/6d981f7b33f6e0afe6bb

docker exec mysql /usr/bin/mysqldump -u testtest --password=root testtest > backup.sql

docker exec mysql /usr/bin/mysqldump --host 219.240.2.228 --port 3308 -u root --password=password testtest > backup.sql

