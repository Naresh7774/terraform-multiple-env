

resource "aws_instance" "terraform"{
    # ami = "ami-0cae6d6fe6048ca2c"
    ami = var.ami_id
    # instance_type = "t3.micro"
    instance_type = lookup(var.instance_type, terraform.workspace)
    vpc_security_group_ids = [ aws_security_group.allow_all.id ]

    # tags = {
    #   Name = "terraform"
    #   Terraform = "true"
    # }

    tags = merge(
      local.common_tags,
      {
        Name = "${local.common_name}-workspace"
      }
    )
}

resource "aws_security_group" "allow_all"{
  # name = "allow-all-terraform"
  name = "${local.common_name}-workspace"


  egress{
    from_port = 0 #from port 0 to port 0:means all ports
    to_port = 0
    protocol = "-1" # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"] # internet
  }

  ingress{
    from_port = 0 #from port 0 to port 0:means all ports
    to_port = 0
    protocol = "-1" # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"] # internet
  }

  # tags ={
  #   Name = "allow-all-terraform"
  # }

  tags = merge(
    local.common_tags,
    {
    name = "${local.common_name}-tfvars-multi-env"
    }  
  )

}