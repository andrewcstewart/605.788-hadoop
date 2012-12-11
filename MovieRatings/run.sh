CP="dist/RatingDistribution.jar:/usr/local/hadoop/hadoop-1.0.3/hadoop-core-1.0.3.jar"
CP=${CP}:/usr/local/hadoop/hadoop-1.0.3/conf
for f in /usr/local/hadoop/hadoop-1.0.3/lib/*.jar 
do
CP=${CP}:${f}
done

hadoop fs -rmr /movie-rating-result

#java -classpath ${CP} bdpuh.mapreducebasics.WordCount /in /out
#hadoop jar dist/MovieRatings.jar  movieratings.MovieRatings /movie-and-ratings /movie-rating-result
hadoop jar dist/MovieRatings.jar /movie-and-ratings /movie-rating-result 
