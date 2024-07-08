#Create IAM user
resource "aws_iam_user" "iam_users" {
  count = length(var.iam_user_names)
  name  = var.iam_user_names[count.index]
}


#Attach EC2 Policy
resource "aws_iam_user_policy_attachment" "attach_ec2_policy" {
  count       = length(var.iam_user_names)
  user        = aws_iam_user.iam_users[count.index].name
  policy_arn  = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"

}

#Attach S3 Policy
resource "aws_iam_user_policy_attachment" "attach_s3_policy" {
  count       = length(var.iam_user_names)
  user        = aws_iam_user.iam_users[count.index].name
  policy_arn  = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  
}