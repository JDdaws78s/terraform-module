module "ec2-test" {
  source = "../terraform-ec2-module"
  instance_name = var.instance_name
  instance_type = var.instance_type
  ami_id = data.aws_ami.ami.id

}