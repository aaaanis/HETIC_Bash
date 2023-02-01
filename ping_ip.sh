#!/bin/bash

IP = 10.93.163

> online_host.txt
> offline_host.txt

start=`date +%s`

for i in {0..254}
do
	if ping -q -W 1 -c 1 $IP.$i >/dev/null
	then
		echo $IP.$i >> online_host.txt
	else
		echo $IP.$i >> offline_host.txt
	fi
done

echo $(wc -l online_host.txt)
echo $(wc -l offline_host.txt)

end=`date +%s`
runtime=$((end-start))

echo $runtime 