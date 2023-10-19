#!/bin/bash
snb=$1
svc=$2

kubectl delete deploy $snb-$svc
kubectl delete svc svc-$snb-$svc
