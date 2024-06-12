resource "aws_iam_user" "administrator" {
  name = "Administrator"
}

data "aws_iam_policy" "administrator_access" {
  name = "AdministratorAccess"
