resource "aws_kms_key" "my_key" {
  description = "domain key"
}

resource "aws_codeartifact_domain" "my_domain" {
  domain         = var.domain_name
  encryption_key = aws_kms_key.my_key.arn

  tags = {
    CreatedBy = "Terraform"
  }
  
}

resource "aws_codeartifact_repository" "my_repo" {
  repository = var.repository_name
  domain     = aws_codeartifact_domain.my_domain.domain

  external_connections {
    external_connection_name = var.external_connection
 }

   tags = {
    CreatedBy = "Terraform"
  }

}

