https://stackoverflow.com/questions/33304388/calling-redis-cli-in-docker-compose-setup

https://chartio.com/resources/tutorials/how-to-get-all-keys-in-redis/

docker exec -it redis_redis_1 redis-cli -h www.bookstorage.kr -p 6379

docker exec -it redis_redis_1 redis-cli -h www.bookstorage.kr -p 6379 -n 1 keys '*' > file.txt


