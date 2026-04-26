resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = lookup(var.instance_type, terraform.workspace )
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = merge(
      local.common_tags,
      {
        Name = "${local.common_name}-workspace"
      }
    )
}
