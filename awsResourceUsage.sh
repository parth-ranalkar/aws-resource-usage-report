#!/bin/bash


####################################################
# Author : Parth Ranalkar
# Date : 2nd June 2024
#
# Version : v1
#
# This script will report the AWS resource usage
####################################################


set -x

#AWS S3
#AWS EC2
#AWS IAM Users
#AWS Lambda

#list S3 Bukets
aws s3 ls 

#list EC2 Instances 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' 

#list IAM users
aws iam list-users | jq '.Users[].UserId'

#list lambda
aws lambda list-functions

