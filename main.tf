provider "aws" {
  region = "us-east-2"  # Replace with your desired AWS region
}

module "create_iam_users" {
  source = ".IAM_Module"

  users = ["John", "Clinton", "Jay"]  # List of IAM user names you want to create
}