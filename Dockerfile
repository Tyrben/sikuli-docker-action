# Container image that runs your code
FROM alpine:3.17

# Installs java-jre
RUN apk add openjdk11-jre

# Adds SikuliX IDE jar dependency to the standard path for jars 
ADD https://repo1.maven.org/maven2/org/python/jython-standalone/2.7.3/jython-standalone-2.7.3.jar /usr/share/java/jython/

# Adds SikuliX IDE jar dependency to the standard path for jars `/usr/share/java/` of the container
ADD https://launchpad.net/sikuli/sikulix/2.0.5/+download/sikulixide-2.0.5.jar /usr/share/java/sikulix/

# Copies the script for CLASSPATH to the standard path for scripts `/usr/local/bin/` of the container
#COPY list-shared-jars.sh /usr/local/bin/list-shared-jars.sh

# Defines the CLASSPATH with jython and sikulix
ENV CLASSPATH=/usr/share/java/jython/jython-standalone-2.7.3.jar:/usr/share/java/sikulix/sikulixide-2.0.5.jar
#:${CLASSPATH}

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]
