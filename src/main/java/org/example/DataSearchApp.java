package org.example;

import org.apache.spark.sql.SparkSession;

public class DataSearchApp {
    public static void main(String[] args) {
        String path = "";
        String query = "";
        if (args.length == 2) {
            path = args[0];
            query = args[1];
        } else {
            System.out.println("Path and Query arguments are required");
        }
        SparkSession sparkSession = SparkSession.builder()
                .master("local[*]")
                .appName("Word Count")
                .config("spark.driver.memory", "10g")
                .getOrCreate();
        sparkSession.read().option("header",true).csv(path).createOrReplaceTempView("df1View");
        sparkSession.sql(query).show(false);
        sparkSession.stop();
    }
}