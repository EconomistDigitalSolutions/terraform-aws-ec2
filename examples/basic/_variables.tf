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
