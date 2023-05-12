variable "ec2_region" {
  default = "ap-southeast-1"
}

variable "ec2_profile" {
  default = "credentials"
}

variable "ec2_ami" {
  default = "ami-06178cf087598769c"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "ec2_sg" {
  default = "sg-0fcd119096b8aa7b8"
}

variable "ec2_subnet_id" {
  default = ["subnet-0f640217e88c9ba1b", "subnet-0cbc3ee2be1293c0f"]
 
}

variable "ec2_tags" {
  default = "dev"
}

variable "ec2_count" {
  type = number
  default = "2"
}

variable "vpc_id" {
  default = "vpc-0688ab2cade0e14d6"

}
