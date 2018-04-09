variable "region" {
  description = "The aws region from which everything will be based on."
  default = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block (i.e. 0.0.0.0/0)"
  default = "10.1.0.0/16"
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  default = "webserver-pipeline"
}

variable "environment" {
  description = "Either int, stg or prd"
}

variable "shared_credentials_file" {
  description = "Absolute path the AWS credentials file."
}

variable "aws_profile" {
  description = "AWS profile name referenced in the credentials file."
  default = "sds-terraform"
}

variable "public_subnet_cidr_block" {
  description = "Public Subnet CIDR block (i.e. 0.0.0.0/0)"
  default = "10.1.1.0/24"
}

variable "ssh_cidr_block" {
  description = "SSH CIDR block (i.e. 0.0.0.0/0)"
}

variable "key_pair_name" {
  description = "Existing key pair name in same region as the EC2 instance"
}
