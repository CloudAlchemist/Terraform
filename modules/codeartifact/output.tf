output "domain_arn" {
  value = aws_codeartifact_domain.my_domain.arn
}

output "repository_arn" {
  value = aws_codeartifact_repository.my_repo.arn
}