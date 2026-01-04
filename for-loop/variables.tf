variable "instances" {
    # type = list
     default = ["mysql","rabbitmq","mongodb","redis"]
    # default = {
    #     mysql = "t3.micro"
    #     rabbitmq = "t3.micro"
    #     mysql = "t3.small"
    # }
}

variable "zone_id" {
  type = string
  default = "Z0584855OLUDIFKCOOVC"
}

variable "domain" {
  type = string
  default = "haridevops.shop"
}