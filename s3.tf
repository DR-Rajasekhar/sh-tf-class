resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "devopsb27vpcflowlogsbucket"


  tags = {
    Name = "devopsb27flowlogsbucket"
  }
  lifecycle {
    create_before_destroy = true
  }
}


# resource "aws_s3_bucket" "devopsb27one" {
#   bucket = "sridevopsb27one"


#   tags = {
#     Name = "sridevopsb27one"
#   }
#   depends_on = [
#     aws_s3_bucket.devopsb27two
#   ]
# }
# resource "aws_s3_bucket" "devopsb27two" {
#   bucket = "sridevopsb27two"


#   tags = {
#     Name = "devopsb27two"
#   }
#   depends_on = [
#     aws_s3_bucket.devopsb27three
#   ]
# }
# resource "aws_s3_bucket" "devopsb27three" {
#   bucket = "sridevopsb27three"


#   tags = {
#     Name = "devopsb27three"
#   }
# }
