terraform {
  backend "s3" {
    bucket         = "dev-vinoth-terraform-remote-state"
    key            = "do-not-delete/dev-vinoth/terraform.tfstate"
    region         = "ap-south-2"
    encrypt        = true
    dynamodb_table = "dev-vinoth-terraform-remote-state-lock"
  }
}
