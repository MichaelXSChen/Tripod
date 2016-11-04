1. The start_spark-shell.sh need to be run inside a spark package. It only serves to show the logic and the variables to set. 

2. Three test has been done, the first one is an estimation of Pi, the second is a word count of an catalogs of wikepedia, the third added a sort process after the second, scala instructions are as follows. 

		val count = sc.parallelize(1 to 99999999).map{i =>
  			val x = Math.random()
 			val y = Math.random()
  			if (x*x + y*y < 1) 1 else 0
		}.reduce(_ + _)


		val textFile = sc.textFile("/home/xusheng/wiki.xml")
		val counts = textFile.flatMap(line => line.split(" ")).map(word => (word, 1)).reduceByKey(_ + _, 1)
		counts.saveAsTextFile("/home/xusheng/result-stage-2")


		val textFile = sc.textFile("/home/xusheng/wiki.xml")
		val counts = textFile.flatMap(line => line.split(" ")).map(word => (word, 1)).reduceByKey(_ + _, 1).map(item => item.swap).sortByKey(true, 1).map(item => item.swap)
		counts.saveAsTextFile("/home/xusheng/result-stage-2")

3. Result are shown in the screenshots. 
	1. For the first one
		normal: 4 min
		kill one executor at about 3 min: overall time -> 6 min (150%)

	2. For the seocnd test
		normal: 1.2 min
		#TODO: redo the test

	3. For the thrid test
		There are total three stages
		normal 4.7min
		kill at the middle at second stage => 7.4 min
		kill at the middle at last stage => 9.0 min

		