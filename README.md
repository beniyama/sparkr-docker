sparkr-docker
=============

A Dockerfile to try out [SparkR](http://amplab-extras.github.io/SparkR-pkg/) with [RStudio](https://www.rstudio.com/) frontend.

This dockerfile builds a centos-based docker image with [Apache Spark](http://spark.apache.org/), [SparkR](http://amplab-extras.github.io/SparkR-pkg/), and [RStudio](https://www.rstudio.com/). 

Since I'm located in Japan, the Dockerfile uses Asia/Tokyo timezone and Japanese mirror sites to fetch yum packages. If you want to ignore the settings, just replace repository paths for your region.  

### How to build & run
```
$ cd sparkr-docker
$ docker build -t sparkr .
$ docker run -d -p <YOUR PORT>:8787 -t sparkr
```

Then access `http://localhost:<YOUR PORT>` with your browser and login RStudio. Default RStudio login account is *rstudio/rstudio* .

Now you can load SparkR library to your R environment and start fancy things.

```
> library("SparkR")
Loading required package: rJava
[SparkR] Initializing with classpath /usr/lib64/R/library/SparkR/sparkr-assembly-0.1.jar

> sc <- sparkR.init("local")
14/05/12 12:17:56 INFO Slf4jLogger: Slf4jLogger started
```

Please refer to [SparkR official site](http://amplab-extras.github.io/SparkR-pkg/) for further instruction, and please let me know if you happened to face any problems related to docker stuffs.
