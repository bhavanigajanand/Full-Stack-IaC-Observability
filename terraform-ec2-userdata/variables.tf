variable "aws_region" {
  description = "The AWS Region"
  default     = "eu-central-1"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI for eu-central-1"
  default     = "ami-01f79b1e4a5c64257" 
}

variable "instance_type" {
  description = "The size of the instance"
  default     = "t3.micro" 
}

variable "key_pair_name" {
  description = "Name for the new SSH Key"
  default     = "vpro-monitoring-key"
}

variable "security_group_name" {
  description = "Name for the Security Group"
  default     = "vpro-monitoring-sg"
}

variable "instance_name" {
  description = "The Name tag for the EC2"
  default     = "vpro-monitoring-server"
}