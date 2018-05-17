https://hub.docker.com/r/mirkoprescha/spark-zeppelin-docker/

  docker run -it -p 18080:18080 -p 8088:8080 -d mirkoprescha/spark-zeppelin-docker

docker cp <your-jar-file.jar> $(docker ps  -l -q):/work/

docker exec -it gigantic_pare bash

cd /work
spark-submit   --class <your-class-name-with-package> \
      <your-jar-file.jar> \
      [<your-program-parameters>]

##################################################################################

https://docs.databricks.com/spark/latest/data-sources/read-parquet.html

##################################################################################

case class MyCaseClass(key: String, group: String, value: Int, someints: Seq[Int], somemap: Map[String, Int])
val dataframe = sc.parallelize(Array(MyCaseClass("a", "vowels", 1, Array(1), Map("a" -> 1)),
  MyCaseClass("b", "consonants", 2, Array(2, 2), Map("b" -> 2)),
  MyCaseClass("c", "consonants", 3, Array(3, 3, 3), Map("c" -> 3)),
  MyCaseClass("d", "consonants", 4, Array(4, 4, 4, 4), Map("d" -> 4)),
  MyCaseClass("e", "vowels", 5, Array(5, 5, 5, 5, 5), Map("e" -> 5)))
).toDF()
// now write it to disk
dataframe.write.mode("overwrite").parquet("/tmp/testParquet")

##################################################################################

val data = sqlContext.read.parquet("/tmp/testParquet")
data.show()

##################################################################################

https://zeppelin.apache.org/docs/0.5.5-incubating/tutorial/tutorial.html


https://spark.apache.org/docs/2.1.0/monitoring.html


#####################################################################################

https://zeppelin.apache.org/docs/0.6.1/interpreter/jdbc.html#apply-zeppelin-dynamic-forms




