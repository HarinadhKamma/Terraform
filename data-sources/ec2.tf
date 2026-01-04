# resource "aws_instance" "aws_ec2" {
#   ami = data.aws_ami.roboshop.id
#   instance_type = "t3.micro"
#   vpc_security_group_ids = [ aws_security_group.allow-all.id ]
#   tags = {
#     Name = "terraform"
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }

# resource "aws_security_group" "allow-all" {
#   name = "allow-all"
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#    ingress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "allow-all"
#   }
# }