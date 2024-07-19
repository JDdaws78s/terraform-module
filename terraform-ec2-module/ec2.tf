resource "aws_instance" "ec2" {

    ami = var.ami_id
    vpc_security_group_ids = var.vpc_security_group_ids
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name
    }

}