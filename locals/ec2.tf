resource "aws_instance" "aws_ec2" {
  ami = data.aws_ami.roboshop.id
  instance_type = local.instance_type
  vpc_security_group_ids = [ aws_security_group.allow-all.id ]
  tags = local.common_tags
}
resource "aws_security_group" "allow-all" {
  name = "${local.project_name}-allow-all"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${local.project_name}-allow-all"
  }
}