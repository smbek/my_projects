resource "aws_route53_zone" "main" {
  name = var.domain_name
  tags = {
    Name        = "s3.${var.domain_name}"
    description = var.domain_name
  }
  comment = var.domain_name
}
resource "aws_route53_record" "s3-a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "s3.${var.domain_name}"
  type    = "A"
  alias {
    evaluate_target_health = false
    name                   = data.aws_s3_bucket.selected-bucket.website_endpoint
    zone_id                = data.aws_s3_bucket.selected-bucket.hosted_zone_id
    
  }
}
