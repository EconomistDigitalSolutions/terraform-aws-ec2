variable "aws-region" {
  description = "The AWS region"
  type        = "string"
}

variable "aws-profile" {
  description = "The name of the AWS shared credentials account."
  type        = "string"
}

variable "instance-tag-name" {
  description = "instance-tag-name"
  type        = "string"
  default     = "EC2-instance-created-with-terraform"
}

variable "instance-type" {
  description = "The instance type to be used"
  type        = "string"
  default     = "t2.micro"
}

variable "user-data-script" {
  description = "The filepath to the user-data script, that is executed upon spinning up the instance"
  type        = "string"
}

variable "instance-ami" {
  description = "The AMI (Amazon Machine Image) that identifies the instance"
  type        = "string"
  default     = "ami-01419b804382064e4"
}

variable "instance-key-name" {
  description = "The name of the SSH key to associate to the instance. Note that the key must exist already."
  type        = "string"
}