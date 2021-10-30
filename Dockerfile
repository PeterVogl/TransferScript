FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade

RUN apt-get install -y openjdk-11-jre-headless \
                        openjdk-11-jdk \
                        openjdk-11-source

Run apt-get install -y libpcap-dev

# COPY . /usr/HelloWorld/src/myapp
# WORKDIR /usr/HelloWorld/src/myapp
# RUN javac HelloWorld.java
# CMD ["java", "HelloWorld"]

COPY Transfer/TransferScript-1.0.jar TransferScript-1.0.jar
CMD ["java", "-jar", "TransferScript-1.0.jar"]
