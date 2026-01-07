terraform{
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~>6.0"
      }
    }
}

provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "myec2"{
    ami = "ami-068c0051b15cdb816"
    instance_type = "t3.micro"
    tags={
        "Env" = "Prod"
    }
}
