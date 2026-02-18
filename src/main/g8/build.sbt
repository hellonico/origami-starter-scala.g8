
scalaVersion := "2.13.14"

resolvers ++= Seq(
  Resolver.mavenLocal,
  "hellonico" at "https://repository.hellonico.info/repository/hellonico",
  "clojars" at "https://repo.clojars.org")

name := "hello-origami"
organization := "org.hellonico"
version := "1.3"

libraryDependencies ++= Seq("origami" % "origami" % "4.13.0-2-SNAPSHOT", "origami" % "filters" % "1.48" )

// f*** sbt can't read transitive deps
libraryDependencies += "org.jetbrains.kotlin" % "kotlin-stdlib" % "1.9.22"
libraryDependencies += "com.squareup.okhttp3" % "okhttp" % "4.12.0"
libraryDependencies += "com.squareup.moshi" % "moshi" % "1.15.1"
libraryDependencies += "io.reactivex.rxjava2" % "rxjava" % "2.2.21"
libraryDependencies += "org.mozilla" % "rhino" % "1.7.14"
