provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXX"
  secret_key = "XXXXXX"
}
resource "aws_instance" "test" {
  ami           = "ami-XXXXX"
  instance_type = "t2.micro"
  count			= 2

  tags = {
    Name = ["Test-Instance", "Dev-Inatance"]
  }
}

