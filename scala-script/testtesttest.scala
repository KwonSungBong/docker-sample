#!/bin/sh
exec scala "$0" "$@"
!#
object HelloWorld {
  def main(args: Array[String]) {
    println("Hello, world! " + args.toList)
  }
}
HelloWorld.main(args)

import scala.sys.process._
val cmd = "uname -a"
val output = cmd.!!
println(output)

val cmdtest = "./test.scala"
val testtest = cmdtest.!!
println(testtest)

