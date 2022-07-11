provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
  ami = "ami-07620139298af599e"
  instance_type = "t2.micro"
}