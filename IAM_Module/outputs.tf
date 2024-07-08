output "user_names" {
  description = "Names of the created IAM users"
  value       = aws_iam_user.iam_user_names[*].name
}