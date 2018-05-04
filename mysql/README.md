

dump

##########################################

https://gist.github.com/spalladino/6d981f7b33f6e0afe6bb

docker exec mysql /usr/bin/mysqldump -u testtest --password=root testtest > backup.sql

docker exec mysql /usr/bin/mysqldump --host 219.240.2.228 --port 3308 -u root --password=password testtest > backup.sql

cat backup.sql | docker exec -i mysql /usr/bin/mysql -u root --password=password testtest

cat backup_table.sql | docker exec -i mysql /usr/bin/mysql --host 219.240.2.228 --port 3308 -u root --password=password testtest

https://devopsheaven.com/mysql/databases/docker/backup/restore/2017/09/17/restore-mysql-database-using-docker.html

