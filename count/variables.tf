variable "instances" {
    type = list
    default = ["mysql","rabbitmq","mongodb","redis"]
}

variable "zone_id" {
  type = string
  default = "Z0584855OLUDIFKCOOVC"
}

variable "domain" {
  type = string
  default = "haridevops.shop"
}