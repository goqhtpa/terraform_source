provider "aws" {
    region = "ap-northeast-2"  
}

resource "aws_iam_user" "example" {
    count = length(var.user_names)
    name = var.user_names[count.index]
}

output "all_arn" {
    value = aws_iam_user.example[*].arn
}