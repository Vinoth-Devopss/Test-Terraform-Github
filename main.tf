*/
# Create Prod Vinoth-TF Backend-S3.
module "Backend-S3" {
  source = "./Modules/Backend-S3"
}

# Create Prod Vinoth-TF DYNAMODB..
module "DYNAMODB" {
  source = "./Modules/DYNAMODB"
}

/*

# Create Prod Vinoth-TF IAM..
module "IAM" {
  source = "./Modules/IAM"
}
