variable "instance_type" {
  description = "Type of instance to create"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
}

variable "subnet_id" {
  description = "ID of the existing subnet"
  type        = string
}

variable "security_group_ids" {
  description = "List of existing security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "The key pair name to use for the instance"
  type        = string
}