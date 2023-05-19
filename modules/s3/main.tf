resource "aws_cloudfront_origin_access_identity" "s3_origin_access_identity" {
  comment = "Cloud front Access for Portal"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket        = var.bucket_name
  force_destroy = true
  tags          = var.tags
}

resource "aws_s3_bucket_website_configuration" "s3_bucket_website_configuration" {
  bucket = var.bucket_name
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "404.html"
  }
}

resource "aws_s3_bucket_versioning" "s3_bucket_versioning" {
  bucket = var.bucket_name
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  bucket = aws_s3_bucket.s3_bucket.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "CloudFrontRead",
        Effect = "Allow",
        Principal = {
          AWS = "${aws_cloudfront_origin_access_identity.s3_origin_access_identity.iam_arn}"
        },
        Action   = "s3:GetObject",
        Resource = "arn:aws:s3:::${var.bucket_name}/*"
      }
    ]
  })
}