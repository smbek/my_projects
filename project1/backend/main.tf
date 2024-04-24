provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "mairambekstatefile" {
  bucket = "backend-kaizen-mairambek"
     
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
    bucket = aws_s3_bucket.mairambekstatefile.id

    versioning_configuration {
      status = "Enabled"
    }
}