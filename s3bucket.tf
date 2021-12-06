# Create a bucket
resource "aws_s3_bucket" "b1" {

  bucket = "s3-terraform-bucket-srk"

  acl    = "private"

  tags = {

    Name        = "My bucket"

    Environment = "Dev"

  }

}

# Upload an object
resource "aws_s3_bucket_object" "object" {

  bucket = aws_s3_bucket.b1.id

  key    = "index.html"

  acl    = "private"

  source = "myfiles/index.html"

  etag = filemd5("myfiles/index.html")

}
