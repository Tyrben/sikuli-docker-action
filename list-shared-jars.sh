#!/bin/sh -l

first_lap=true

find /usr/share/java -type f -name '*.jar' | while read jarname; do
	#Debug echo ">>$jarname<<"
	[ $first_lap = true ] && first_lap=false || echo -n :
	echo -n $jarname 
done
