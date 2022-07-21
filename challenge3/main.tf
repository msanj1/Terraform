provider "aws" {
    region = "ap-southeast-2"
}

module "db"{
    source = "./db"
}

module "web"{
    source = "./web"
}


output "PrivateIp"{
    value = module.db.PrivateIp
}

output "PublicIp"{
    value = module.web.PublicIp
}