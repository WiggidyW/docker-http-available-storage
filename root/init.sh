#!/bin/sh
while true;
do {
	echo -e 'HTTP/1.1 200 OK\r\n';
	echo $(df / | awk 'FNR == 2 {print $4}');
} | nc -l -p 8080;
done
