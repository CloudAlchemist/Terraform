variable "instance_type" {
  description = "Type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = "ami-id"
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
  default     = "pemfile"
}

variable "domain_name" {
  description = "The name of the CodeArtifact domain"
  type        = string
  default     = "devops"
}

variable "repository_name" {
  description = "The name of the CodeArtifact repository"
  type        = string
  default     = "python"
}

variable "external_connection" {
  description = "The external connection name for the repository"
  type        = string
  default     = "public:npmjs"
}