//variables

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "key_name" {}

//provider

provider"aws" {
  access_key = "${var.aws_acess_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

//resources

resource "aws_instance" "nginx" {
  ami   = "ami-07d0cf3af28718ef8"
  instance_type = "t2.micro"
  key_name  = "${var.key_name}"
}

//connection