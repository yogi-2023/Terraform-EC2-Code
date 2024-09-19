provider "aws" {
  region     = "us-east-1"
  access_key = "AKIARAYB54JOOH3FQEMN"
  secret_key = "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"
}
resource "aws_instance" "Dev" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"

  tags = {
    Name = "DEV-EC2"
    Env  = "DEV"
  }
}


