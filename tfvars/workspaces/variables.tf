
# variable "common_tags" {
#   default = {
#     project = "roboshop"
#     Terraform = "true"
#   }
# }

variable "project" {
  default = "rooboshop"
}

variable "environment" {
  type = map
  default = {
    dev = "dev"
    prod = "prod"
  }
}

variable "ami_id" {
  default = "ami-0cae6d6fe6048ca2c"
}

variable "instance_type" {
    type = map
#   default = "t3.micro"
    default = {
      dev = "t3.micro"
      prod = "t3.small"
    }
}


# variable "ec2_tags" {
#   type = map 
#   default = {
#     Name = "Terraform-demo"
#     Terraform = "true"
#     Project = "Joindevops"
#     Environment = "dev"
#   }
# }


# variable "sg_name" {
#   type = string
#   default = "allow-all-terraform"
#     #Optional to inform what is this variables about
#   description = "Security Group Name to attach to Ec2 instance"
# }




variable "cidr" {
  type = list
  default = ["0.0.0.0/0"]
}


variable "egress_from_port" {
  default = 0
}
variable "egress_to_port" {
  default = 0
}

variable "ingress_from_port" {
  default = 0
}
variable "ingress_to_port" {
  default = 0
}

variable "protocol" {
  type = string
  default = "-1"
}
