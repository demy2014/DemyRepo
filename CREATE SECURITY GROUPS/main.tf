provider "aws" {
  region = "ap-southeast-1"
}

#############################################################
# Data sources to get VPC and default security group details
#############################################################
data "aws_vpc" "default" {
  default = true
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

########################################################
# Create SGs
########################################################

resource "aws_security_group" "service_one" {
  name        = "Open Traffic HTTP"
  description = "Allow access from service two"
   ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "service_two" {
  name        = "Open Traffic HTTPS"
  description = "Allow access from service one"
  egress {
    protocol   = "-1"
    from_port  = 0
    to_port    = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}



