variable "aws-region" {
  description = "The AWS region"
  type        = "string"
}

variable "aws-profile" {
  description = "The name of the AWS shared credentials account."
  type        = "string"
}

variable "instance-ami" {
  description = "The AMI (Amazon Machine Image) that identifies the instance"
  type        = "string"
  default     = "ami-01419b804382064e4"
}

variable "instance-type" {
  description = "The instance type to be used"
  type        = "string"
  default     = "t2.micro"
}

variable "instance-key-name" {
  description = "The name of the SSH key to associate to the instance. Note that the key must exist already."
  type        = "string"
  default     = "engagement-key"
}

variable "iam-role-name" {
  description = "The IAM role to assign to the instance"
  type        = "string"
  default     = "role-name"
}

variable "instance-associate-public-ip" {
  description = "Defines if the EC2 instance has a public IP address."
  type        = "string"
  default     = "true"
}

variable "user-data-script" {
  description = "The filepath to the user-data script, that is executed upon spinning up the instance"
  type        = "string"
  default     = ""
}

variable "instance-tag-name" {
  description = "instance-tag-name"
  type        = "string"
  default     = "EC2-instance-created-with-terraform"
}

variable "vpc-cidr-block" {
  description = "The CIDR block to associate to the VPC"
  type        = "string"
  default     = "10.0.0.0/16"
}

variable "subnet-cidr-block" {
  description = "The CIDR block to associate to the subnet"
  type        = "string"
  default     = "10.0.1.0/24"
}

variable "vpc-tag-name" {
  description = "The Name to apply to the VPC"
  type        = "string"
  default     = "VPC-created-with-terraform"
}

variable "ig-tag-name" {
  description = "The name to apply to the Internet gateway tag"
  type        = "string"
  default     = "aws-ig-created-with-terraform"
}

variable "subnet-tag-name" {
  description = "The Name to apply to the VPN"
  type        = "string"
  default     = "VPN-created-with-terraform"
}

variable "sg-tag-name" {
  description = "The Name to apply to the security group"
  type        = "string"
  default     = "SG-created-with-terraform"
}
