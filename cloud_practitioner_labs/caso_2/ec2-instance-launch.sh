#!/bin/bash
aws ec2 run-instances --image-id ami-09d3b3274b6c5d4aa --instance-type t2.micro --count 1 --key-name vockey --security-group-id sg-0efd30ab7cb7c5110 --subnet-id subnet-05230b72acd735abc --user-data file://userdata.sh --associate-public-ip-add
ress --tag-specifications 'ResourceType=instance, Tags=[{Key=Name,Value=public-web-server}]' \
        && \
aws ec2 run-instances --image-id ami-09d3b3274b6c5d4aa --instance-type t2.micro --count 1 --key-name vockey --security-group-id sg-0c1ff2f5e6bfb46f4  --subnet-id subnet-01589d79cb9e05dcb --tag-specifications 'ResourceType=instance, Tags=[{Key
=Name,Value=private-server}]'