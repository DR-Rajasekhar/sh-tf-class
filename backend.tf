terraform {
  backend "s3" {
    bucket         = "awsb42practice"
    key            = "functions-terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "devopsb27-terraform-locking"
    encrypt        = true
  }
}