resource "aws_acm_certificate" "cert" {
    domain_name       = "<your_domain_name>"
    validation_method = "DNS"
  }