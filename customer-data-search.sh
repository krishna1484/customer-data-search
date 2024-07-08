#!/bin/bash

eval "./mvnw clean install"

SPARK_HOME=C:\\rj\\softwares\\spark
#
## JAR containing a simple hello world
JARFILE=C:\\rj\\ws\\customer-data-search\\target\\customer-data-search-1.0.jar
#
## Run it locally
${SPARK_HOME}/bin/spark-submit2.cmd --class org.example.DataSearchApp --master local[*] $JARFILE 'C:\rj\temp\employee.csv' 'select * from df1View'
