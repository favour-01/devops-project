# devops-project
This is a just a short note on what i have done so far
********************************************************************
Ctreate a user and attach a ploicy to it using Terraform.

With the user created, i created a policy and added the user to it. This policy example gives the user permission to list buckets, s3:CreateBucket", "s3:GetObject", "s3:PutBucketPublicAccessBlock".

In creating a user and attach a ploicy to it using Terraform, below are the simple steps to follow:
*********************************************************************************************************

Step 1: Install Terraform
Step 2: Create a Terraform Directory
  Create a directory for the new Terraform project:
Step 3: Create the create_user.tf File
Step 4: Configure the New User Account
Step 5: Create a Policy and Add the New User
Step 6: Initialize Terraform and Apply Changes by running this command:
    terraform init 
    Next, apply changes to your AWS environment:
    terraform apply

Step 7: Confirm Changes in AWS IAM
