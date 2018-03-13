https://hub.docker.com/r/mirkoprescha/spark-zeppelin-docker/

  docker run -it -p 18080:18080 -p 8088:8080 -d mirkoprescha/spark-zeppelin-docker

docker cp <your-jar-file.jar> $(docker ps  -l -q):/work/

docker exec -it gigantic_pare bash

cd /work
spark-submit   --class <your-class-name-with-package> \
      <your-jar-file.jar> \
      [<your-program-parameters>]
