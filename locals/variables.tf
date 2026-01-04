variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}

variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

# variable "instancetype" {
#   type = string
#   default = "t3.micro"
# }

variable "common_tags" {
  type = map
  default = {
     Terraform   = "true"
     Environment = "dev"
     project ="roboshop"
  }
}

variable "sg_name" {
    type = string
    default = "allow-all" 
}

variable "ports" {
  type = map
  default = {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
  }
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
  }

variable "ipv6_cidr_blocks" {
    type = list
    default = ["::/0"]

    }
