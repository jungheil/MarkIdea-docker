#!/bin/sh

cp /markidea/note.jar /markidea/data && \
/usr/local/openjdk-8/bin/java -jar /markidea/data/note.jar --username=$USERNAME --password=$PASSWORD