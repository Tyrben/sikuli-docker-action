#!/bin/sh -l

CLASSPATH=$CLASSPATH:$(list-shared-jars.sh)

echo $!
echo "jar-file=$jar-file">> $GITHUB_OUTPUT

