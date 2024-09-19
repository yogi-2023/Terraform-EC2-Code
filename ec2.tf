provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXXX"
  secret_key = "XXXXXX"
}
resource "aws_instance" "Dev" {
  ami           = "ami-XXXXX"
  instance_type = "t2.micro"

  tags = {
    Name = "DEV-EC2"
  }
}
