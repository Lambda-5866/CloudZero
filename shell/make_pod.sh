#!/bin/bash

svc=$1
snb=$2
svn=$3

kubectl create deploy ${snb}-${svn} --image=${svc} --port=22  -- sleep infinity

kubectl expose deploy ${snb}-${svn} --type=NodePort --port=22 --name=svc-${snb}-${svn}

sleep 15

port=$(kubectl describe svc svc-${snb}-${svn} | awk '/NodePort:/ {print $3}')

con=$(kubectl get pods | awk '/'${snb}'-'${svn}'/ {print $1}')

kubectl exec -it ${con} -- /bin/bash -c "echo nameserver 8.8.8.8 > /etc/resolv.conf"
kubectl exec -it ${con} -- /bin/bash -c "apt-get update -y " > /dev/null
kubectl exec -it ${con} -- /bin/bash -c "apt-get install vim ssh git -y" > /dev/null
kubectl exec -it ${con} -- /bin/bash -c "sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config"
kubectl exec -it ${con} -- /bin/bash -c "sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config"
kubectl exec -it ${con} -- /bin/bash -c "service ssh start" > /dev/null
kubectl exec -it ${con} -- /bin/bash -c "echo -e 'root:1234' | chpasswd" > /dev/null
