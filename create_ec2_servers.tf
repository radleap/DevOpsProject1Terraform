variable "AWS_REGION" {
  description = "AWS region"
  type        = string
}
variable "AWS_ACCESS_KEY" {
  description = "AWS access key"
  type        = string
}
variable "AWS_SECRET_KEY" {
  description = "AWS secret key"
  type        = string
}

terraform{
 required_providers {
  aws = {
   source = "hashicorp/aws"
   version = "~> 3.0"
  }
 }
}

# Configuring Provider
provider "aws" {
 region = var.AWS_REGION
 access_key = var.AWS_ACCESS_KEY
 secret_key = var.AWS_SECRET_KEY
}

# Deploying an EC2 Instance - Testing Server
resource "aws_instance" "terra-ec2-testing" {
 ami = "ami-0e472ba40eb589f49"
 instance_type = "t2.micro"
 tags = {Name = "terra-ec2-testing"}
 provisioner "local-exec" {
   command = "echo ${self.public_ip} >> ec2_public_ips_test.txt"
}
}

# Deploying an EC2 Instance - Production Server
resource "aws_instance" "terra-ec2-production" {
 ami = "ami-0e472ba40eb589f49"
 instance_type = "t2.micro"
 tags = {Name = "terra-ec2-production"}
 provisioner "local-exec" {
   command = "echo ${self.public_ip} >> ec2_public_ips_prod.txt"
}
}
