#!/bin/sh 

/usr/bin/docker ps -q | xargs /usr/bin/docker inspect --format '{{.State.Pid}}, {{.Name}}' | /usr/bin/grep wordpress | /usr/bin/cut -d"," -f1 > /var/run/docker/wordpress.pid

