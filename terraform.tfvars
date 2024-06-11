instance_type      = "t2.micro"                 # Specify instance type
ami_id             = "ami-04c913012f8977029"    # Specify AMI ID
vpc_id             = "vpc-0e473b2385d286739"    # Specify VPC ID
subnet_id          = "subnet-04d4d3e52b67d11ad" # Specify subnet ID
security_group_ids = ["sg-06511ad1cdfde1835"]   # Specify security group ID
key_name           = "DB-POC"                   # Specify existing pem file name without .pem extension


domain_name         = "devops"
repository_name     = "python"
external_connection = "public:npmjs"
