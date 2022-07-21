resource "aws_instance" "db" {
  ami = "ami-07620139298af599e"
  instance_type = "t2.micro"

  tags = {
    "Name" = "DB Server"
  }
}

output "PrivateIp"{
    value = aws_instance.db.private_ip
}