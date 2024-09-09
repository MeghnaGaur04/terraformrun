terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
  cloud { 
    
    organization = "gbkr" 

    workspaces { 
      name = "first_CLI_workspace" 
    } 
  }
}

provider "aws" {
  region = "us-west-2"
}
# locals {
#     vpc_cidr = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
# }
# module "maine" {
#   source = "./mymod"
#   for_each = toset(local.vpc_cidr)
#   vpc_cidr = each.value
# }

# module "maine" {
#   source = "./mymod"
#   count = length(local.vpc_cidr)
#   vpc_cidr = local.vpc_cidr[count.index]
# }


# output "cidrid" {
  
# value = module.maine[*].vpc_id
# }

# module "vpc" {
#   source = "terraform-aws-modules/vpc/aws"

#   name = "my-vpc"
#   cidr = "10.0.0.0/16"

#   azs             = ["us-west-2a", " us-west-2b", " us-west-2c"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#   enable_nat_gateway = true
#   enable_vpn_gateway = false

#   tags = {
#     Terraform = "true"
#     Environment = "dev"
#   }
# }

# module "consul" {
#   source = "github.com/MeghnaGaur04/myterraform_module?ref=v1"
#   vpc_cidr = "192.168.1.0/24"

# }


/* module "module" {
  source  = "app.terraform.io/gbkr/module/aws"
  version = "1.0.1"
  vpc_cidr = "192.168.1.0/24"
} */
