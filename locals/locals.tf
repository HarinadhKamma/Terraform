locals {
  instance_type = "t3.micro"
  project_name = "${var.project}-${var.environment}"
  common_tags = merge(var.common_tags,{
     Name = "${local.project_name}-local.demo"
  })
}