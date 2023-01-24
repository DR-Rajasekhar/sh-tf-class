#Creating buckets using count function
resource "aws_s3_bucket" "multiplebuckets" {
  count  = 3
  bucket = lower("RRRKGFVIKRAM${count.index + 1}")
  tags = {
    Name = lower("RRRKGFVIKRAM${count.index + 1}")
  }
}
#Creating buckets using for_each function
locals {
  bucket_names = {
    buk1 = "buk1rrrkgfvikram"
    buk2 = "buk2rrrkgfvikram"
    buk3 = "buk3rrrkgfvikram"
  }
}
resource "aws_s3_bucket" "foreachbuckets" {
  for_each = local.bucket_names
  bucket   = each.value
  tags = {
    Name = each.value
  }
}