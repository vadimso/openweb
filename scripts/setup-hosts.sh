#!/bin/bash


IP_ADDRESS=$(kubectl get svc todo2-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}')


echo "$IP_ADDRESS tools.devops-openweb.com" | sudo tee -a /etc/hosts
