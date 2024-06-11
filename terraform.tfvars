instance_type      = "t2.micro"  # Specify instance type
ami_id             = "ami-id"    # Specify AMI ID
vpc_id             = "vpc-id"    # Specify VPC ID
subnet_id          = "subnet-id" # Specify subnet ID
security_group_ids = ["sg-id"]   # Specify security group ID
key_name           = "pem file"  # Specify existing pem file name without .pem extension


domain_name         = "devops"
repository_name     = "python"
external_connection = "public:npmjs"
