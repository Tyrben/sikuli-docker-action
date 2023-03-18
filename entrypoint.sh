#!/bin/sh -l

export CLASSPATH=$CLASSPATH:$(list-shared-jars.sh)

echo $!
echo "jar-file=$jar-file">> $GITHUB_OUTPUT

