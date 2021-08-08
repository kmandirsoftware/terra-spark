terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

module "master_ec2" {
   source="./modules/clusterme"

   ec2_name = "AppMaster"
}

module "job_server_ec2" {
   source="./modules/clusterme"

   ec2_name = "AppJob1"
}



