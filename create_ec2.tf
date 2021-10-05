module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "aws_ec2_test"

  ami                    = "ami-082105f875acab993"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-01e83ab0e67250ded"]
  subnet_id              = "subnet-cc9713aa"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
