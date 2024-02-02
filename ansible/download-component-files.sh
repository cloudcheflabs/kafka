#!/bin/sh

# download jdk.
curl -L -O https://github.com/cloudcheflabs/chango-libs/releases/download/chango-private-deps/openlogic-openjdk-17.0.7+7-linux-x64.tar.gz
mv openlogic-openjdk-17.0.7+7-linux-x64.tar.gz roles/jdk/files/

# download maven.
curl -L -O https://github.com/cloudcheflabs/chango-libs/releases/download/chango-private-deps/apache-maven-3.9.3-bin.tar.gz
mv apache-maven-3.9.3-bin.tar.gz roles/maven/files/

# download zookeeper.
curl -L -O https://github.com/cloudcheflabs/chango-libs/releases/download/chango-private-deps/apache-zookeeper-3.8.3-bin.tar.gz
mv apache-zookeeper-3.8.3-bin.tar.gz roles/zookeeper/files/

# download kafka
curl -L -O https://github.com/cloudcheflabs/chango-libs/releases/download/chango-private-deps/confluent-community-7.5.3.tar.gz
mv confluent-community-7.5.3.tar.gz roles/kafka/files/




