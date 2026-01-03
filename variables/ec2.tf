resource "aws_instance" "aws_ec2" {
  ami = var.ami_id
  instance_type = var.instancetype
  vpc_security_group_ids = [ aws_security_group.allow-all.id ]
  tags = var.tags
}

resource "aws_security_group" "allow-all" {
  name = var.sg_name
  egress {
    from_port        = var.ports.from_port
    to_port          = var.ports.to_port
    protocol         = var.ports.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

   ingress {
    from_port        = var.ports.from_port
    to_port          = var.ports.to_port
    protocol         = var.ports.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

  tags = {
    Name = var.sg_name
  }
}