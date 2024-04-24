
terraform {
  backend "s3" {
    bucket = "backend-kaizen-mairambek"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}