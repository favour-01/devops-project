terraform {

required_providers {

    aws = {

    source  = "hashicorp/aws"

    version = "~> 3.27"

    }

  }

}

provider "aws" {

  region    = "us-east-1"

access_key = "AKIAS2XA565C3DN257NW"

secret_key = "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"

}

resource "aws_iam_user" "new_user" {

  name = "danzor"

}

resource "aws_iam_access_key" "AccK" {

  user = aws_iam_user.new_user.name

}

output "secret_key" {

  value = aws_iam_access_key.AccK.secret

  sensitive = true

}

output "access_key" {

  value = aws_iam_access_key.AccK.id

}
resource "aws_iam_user_policy" "iam" {

  name = "ListBuckets"

  user = aws_iam_user.new_user.name

  policy = <<EOF
{
    "Version":"2012-10-17",
    "Statement": [
        {
            "Sid":"VisualEditor0",
            "Effect":"Allow",
            "Action": [
               
                "s3:ListBucket", "s3:CreateBucket", "s3:GetObject", "s3:PutBucketPublicAccessBlock"
                
            ],
            "Resource":"*"
        }
    ]
}
EOF

}
