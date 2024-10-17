#we need to mention region when we create vpc by module because it is not fatch by defult
provider "aws" {  
    region = "us-east-1"  
}

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}