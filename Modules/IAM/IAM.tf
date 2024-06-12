
resource "aws_iam_user" "administrator" {
  name = "administrator"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_user_policy_attachment" "my_iam_user_policy_attachment" {
  user       = aws_iam_user.administrator.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
