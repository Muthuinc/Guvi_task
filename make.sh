#!/bin/bash

terraform init && terraform apply --auto-approve

sleep 5

a=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=ubuntu" --query 'Reservations[].Instances[].PublicIpAddress' --output text)
echo $a
sed -i "s/ipaddress/$a/g" inventory

ansible-playbook -i inventory ansible.yaml
