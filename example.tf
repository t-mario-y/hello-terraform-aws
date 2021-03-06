variable "region" {
  default = "us-east-1"
}

provider "aws" {
  region = var.region
}

# create a new AWS instance
resource "aws_instance" "example" {
  ami = "ami-b374d5a5"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
}
