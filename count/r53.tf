resource "aws_route53_record" "haridevops" {
  count = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.aws_ec2[count.index].private_ip]
 allow_overwrite = true
}