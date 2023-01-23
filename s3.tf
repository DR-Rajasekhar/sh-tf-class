resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "devopsb27flowlogs${local.bucket_name}"


  tags = {
    Name = "devopsb27flowlogs-${var.env}"
  }
}