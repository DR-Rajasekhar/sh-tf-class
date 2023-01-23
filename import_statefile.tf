data "terraform_remote_state" "devopsb27-state" {
  backend = "s3"
  config = {
    bucket = "awsb42practice"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
