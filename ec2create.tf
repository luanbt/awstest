resource "aws_instance" "testinstance" {
	ami = "ami-082105f875acab994"
	instance_type = "t2.micro"
	subnet_id = "subnet-cc9713aa"
	vpc_security_group_ids = [ "sg-01e83ab0e67250ded" ]
	key_name "testinstance"
tags {
	"Name" = "testinstance"
     }
}
