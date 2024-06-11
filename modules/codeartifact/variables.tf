variable "domain_name" {
    description = "The name od the CodeArtifact domain"
    type = string
}

variable "repository_name" {
  description = "The name of the CodeArtifact repository"
  type        = string
}

variable "external_connection" {
  description = "The external connection name for the repository"
  type        = string
}