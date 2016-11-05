This framework has no fault tolerant at all.
Which means if the task( in this framewor, worker or master) 
dies unexpectedly, the scheduler won't do anything. 

we log the starting time of the framework

after the scheduler is lanuched, it needs around 50 secs for the 
1 master node to start, and 115 secs for the workers to start.
The total start up end-to-end time is 155secs. 
If the operator wants to restart the framework, it will take him 
155 secs to get ready, plus the time it takes to kill the original task. 

The memory state cannot be saved either. 
