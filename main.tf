# resource "aws_s3_bucket" "my_bucket" {
#   provider = aws.east-2
#   bucket = "inc-kisser"

#   tags = {
#     Name        = "My bucket"
#     # Environment = "Dev"
#   }
# }

# resource "aws_s3_object" "file" {
#   bucket = aws_s3_bucket.my_bucket.id
#   key    = "index.html"
#   source = "static/index.html"

# }