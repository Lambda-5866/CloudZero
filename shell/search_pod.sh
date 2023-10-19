#! /bin/bash
snb=$1

if [ -n "$snb" ]
then
	var=`kubectl get deploy | awk '/'${snb}'-/'`
	if [ -n "$var" ]
	then
		echo "Deployments"
		dep=( `kubectl get deploy | awk '/'${snb}'-/ { sub("'$snb'-", "", $1); print $1}'` )
		dep2=( `kubectl get pod | awk '/'${snb}'-/ {print $3}' | grep -Ev 'Terminating'` )
		sv=( ` kubectl get svc | awk '/svc-'${snb}'-/ { sub("22:", "", $5); sub("/TCP", "", $5); print $5}'` )
		
		for (( i=0;i<${#dep[@]};i++ ))
        	do
			echo "${dep[$i]} | Port: ${sv[$i]} | Status: ${dep2[$i]}"
       		done
		echo ""
		echo Host Domain: moonriver.tplinkdns.com
		echo Default ROOT Password \'1234\'
		exit 0
	else
		echo "No Deployment!"
		exit 0
	fi
else
	echo "No Deployment!"
	exit 0
fi
