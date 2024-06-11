output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.my-ec2.instance_id
}

output "domain_arn" {
  value = module.codeartifact.domain_arn
}

output "repository_arn" {
  value = module.codeartifact.repository_arn
}
