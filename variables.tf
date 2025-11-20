variable "ami" {
  description = "EC2 AMI ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet" {
  description = "Subnet ID"
  type        = string
}

variable "security_group_id" {
  description = "Existing security group ID"
  type        = string
}
