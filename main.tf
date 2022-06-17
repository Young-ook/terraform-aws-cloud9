resource "aws_cloud9_environment_ec2" "ide" {
  name                        = local.name
  description                 = var.desc
  instance_type               = var.instance_type
  automatic_stop_time_minutes = var.automatic_stop_time_minutes
  connection_type             = var.connection_type
  subnet_id                   = var.subnet
}

data "aws_instance" "ide" {
  filter {
    name   = "tag:aws:cloud9:environment"
    values = [aws_cloud9_environment_ec2.ide.id]
  }
}
