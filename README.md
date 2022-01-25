# DevOps CICD

##  Project Overview
- See https:github.com/radleap/DevOpsProject1Ansible.git 

## General:
- This houses the terraform IaC files.
	- .tf files to use procurement via AWS of servers (EC2 instances)
	- Configuration details such as AMI, key (.pem), and region given.
	- Need existing AWS account, access key, secrets, ...
	- 
	- Container Dockerfile for image and container creation
	- Container runtime exposes index.html on port 80.  
- This integrates with Jenkins via the plug and Jenkinsfile/playbooks.
- This is separate from the Jenkins/Ansible pipeline code by design.

## General application steps
- sudo terraform init
- sudo terraform apply
	- procure or change state.
- sudo terraform destroy
	- destory resources created. 

![EC2 Instances](https://github.com/radleap/DevOpsProject1Ansible/blob/main/images/img_aws_ec2_instance.JPG)
