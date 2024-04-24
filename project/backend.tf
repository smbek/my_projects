terraform {
  backend "s3" {
    bucket = "backend-s3project112233"                         
    key    = "project1/terraform.tfstate"
    region = "us-east-1"
  }
}