resource "aws_route53_zone" "my_zone" {
  name = "<your_domain_name>"
}



resource "aws_route53_record" "my_record" {
  name    = "<your_subdomain>"
  type    = "A"
  zone_id = aws_route53_zone.my_zone.zone_id
  alias {
    name                   = aws_lb.my_alb.dns_name
    zone_id                = aws_lb.my_alb.zone_id
    evaluate_target_health = false
  }
}