resource "aws_s3_bucket" "example" {
  bucket = "my-devops-practice-bucket-${random_id.suffix.hex}"
  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}