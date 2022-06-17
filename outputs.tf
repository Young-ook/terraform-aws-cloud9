### output variables

module "aws" {
  source = "Young-ook/spinnaker/aws//modules/aws-partitions"
}

output "cloud9_url" {
  description = "URL to open AWS Cloud9 IDE"
  value       = "https://${module.aws.region.name}.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.ide.id}"
}
