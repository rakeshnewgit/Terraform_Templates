variable "region" {
    default = "us-east-1"
  
}

variable "vpccidr" {
    default = "190.150.0.0/16"
  
}
variable "subnetcidr" {
    type = list
    default = ["190.150.5.0/24","190.150.6.0/24","190.150.7.0/24"]
  
}

/* variable "azs" {
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"]
} */

variable "ec2-ami" {
    type = map
    default = {
        us-east-1 = "ami-0d5eff06f840b45e9"
        us-east-2 = "ami-077e31c4939f6a2f3"
        ap-south-1 = "ami-010aff33ed5991201"
    } 
    
}


