data "aws_ami" "roboshop" {
    owners           = ["973714476881"]
    most_recent      = true

     filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

output "datasource" {
  value = data.aws_ami.roboshop.id
}

data "aws_instance" "test_ec2" {
   instance_id = "i-0fb72fe13226c4e89"


}

 

output "test_ec2" {
  value = data.aws_instance.test_ec2
}