terraform{
    required_providers {
      aws = {
        region = "us-east-1"
        version = "~>6.0"
      }
    }
}

resource "aws_instance" "myec2"{
    ami = ami-068c0051b15cdb816
    instance_type = "t3.micro"
    tags={
        "Env" = "Prod"
    }
}
