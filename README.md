docker sample

https://github.com/docker-library/docs/tree/master/nginx


##############################################################################


꽉차면제거

docker volume rm $(docker volume ls -qf dangling=true)

