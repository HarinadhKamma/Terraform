resource "aws_route53_record" "haridevops" {
  for_each = aws_instance.aws_ec2
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
 allow_overwrite = true
}