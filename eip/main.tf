provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
  ami = "ami-07620139298af599e"
  instance_type = "t2.micro"
}

resource "aws_eip" "elasticip" {
    instance = aws_instance.ec2.id
}

output "EIP" {
    value = aws_eip.elasticip.public_ip
}