
resource "aws_iam_user" "administrator" {
  name = "administrator"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "administrator" {
  user = aws_iam_user.administrator.name
}

data "aws_iam_policy_document" "administrator_ro" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "administrator_ro" {
  name   = "administrator_ro"
  user   = aws_iam_user.administrator.name
  policy = data.aws_iam_policy_document.administrator_ro.json
}
