
//create an encrypted s3 bucket to store objects
resource "aws_s3_bucket" "terrajens_bucket" {
  bucket = "terrajens"

  tags = {
    Name    = "teambuck"
  }
}