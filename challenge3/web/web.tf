
resource "aws_instance" "web" {
  ami = "ami-07620139298af599e"
  instance_type = "t2.micro"
  security_groups = [module.sg.name]
  user_data = file("./web/server-script.sh")

  tags = {
    "Name" = "Web Server"
  }
}

module "eip" {
  source = "../eip"
  instance_id = aws_instance.web.id
}

module "sg" {
  source = "../sg"
}

output "PublicIp" {
  value = module.eip.PublicIp
}
