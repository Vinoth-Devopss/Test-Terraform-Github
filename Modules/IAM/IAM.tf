resource "aws_iam_user" "administrator" {
  name = "Administrator"
}

data "aws_iam_policy" "administrator_access" {
  name = "AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "administrators" {
  user      = aws_iam_user.administrator.name
  policy_arn = data.aws_iam_policy.administrator_access.arn
}

resource "aws_iam_user_login_profile" "administrator" {
  user                    = aws_iam_user.administrator.name
  password_reset_required = true
}

output "password" {
  value     = aws_iam_user_login_profile.administrator.password
  sensitive = true
}
