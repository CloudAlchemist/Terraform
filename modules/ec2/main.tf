resource "aws_instance" "my_ec2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  key_name              = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "DEV-SERVER"
    CreatedBY = "Terraform"
  }
}
