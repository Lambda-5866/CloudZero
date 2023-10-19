#!/bin/bash

kubectl -n kubernetes-dashboard create token admin-user --duration 0s
