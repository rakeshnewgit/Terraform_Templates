provider "aws" {
    region = "${var.region}"
  
}

#VPC creation
resource "aws_vpc" "mytestvpc" {
    cidr_block = var.vpccidr
    instance_tenancy = "default"
    tags = {
      "Name" = "main"
       Location = " Hyderabad"
    }  
}

#Wanna create multiple subnets by using az
resource "aws_subnet" "subnets" {
    #count = "${length(var.azs)}"
    count = "${length(data.aws_availability_zones.azs.names)}"
    availability_zone = "${element(data.aws_availability_zones.azs.names,count.index)}"
    vpc_id = "${aws_vpc.mytestvpc.id}"
    cidr_block = "${element(var.subnetcidr,count.index)}"
    tags = {
      "Name" = "Subnet-${count.index+1}"
    }
  
}

