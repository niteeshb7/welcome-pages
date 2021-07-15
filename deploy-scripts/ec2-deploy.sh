#!/usr/bin/env bash
ec2_key_path=/Users/niteesh/aws-ec2-RI/Niteesh-aws.pem
deployment_user=ec2-user
ec2_host_name=ec2-35-177-206-173.eu-west-2.compute.amazonaws.com
deployment_des_dir=/usr/share/nginx/container-app1
server_user=nginx
cd build
pwd
ssh -i $ec2_key_path $deployment_user@$ec2_host_name sudo rm -rf $deployment_des_dir
ssh -i $ec2_key_path $deployment_user@$ec2_host_name sudo mkdir -p $deployment_des_dir
ssh -i $ec2_key_path $deployment_user@$ec2_host_name sudo chmod 777 $deployment_des_dir
scp -r -i $ec2_key_path * $deployment_user@$ec2_host_name:$deployment_des_dir
ssh -i $ec2_key_path $deployment_user@$ec2_host_name sudo chmod -R 777 $deployment_des_dir