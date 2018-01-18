#!/bin/bash
running= $(aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" | grep running | wc -l)
stopped= aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped" | grep stopped | wc -l


curl --data "body=Total Running Instances:$running<br> Total Stopped Instances:$stopped <br>&to=admin@yourdomain.com &subject=Todays Instance Status " http://yourdomain.com/email/send
