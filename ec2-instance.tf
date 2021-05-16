resource "aws_instance" "web" {
    ami = "${lookup(var.ec2-ami,var.region)}"
    instance_type = "t2.micro"
    tags = {
      "Name" = "HellWord"
    }
  
}
