#!/bin/bash

eval "./mvnw clean install" > /dev/null
echo "jar file updated success!"
FOLDER_PATH=C:\\rj\\temp\\employee.csv
QUERY="select * from df1View"
SPARK_HOME=C:\\rj\\softwares\\spark
#
## JAR containing a simple hello world
JARFILE=C:\\rj\\ws\\customer-data-search\\target\\customer-data-search-1.0.jar
#
## Run it locally
${SPARK_HOME}/bin/spark-submit2.cmd --class org.example.DataSearchApp --master local[*] $JARFILE $FOLDER_PATH "$QUERY"
