resource "aws_instance" "myec2" {
  ami = "ami-0c2b8ca1dad447f8a"
  instance_type = lookup(var.instance_type,terraform.workspace)
}

variable "instance_type" {
  type = map
  default = {
    default = "t2.nano"
    dev = "t2.micro"
    prd = "t2.large"
  }
}
