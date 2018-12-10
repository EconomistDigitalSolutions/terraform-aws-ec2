module "terraform-aws-ec2" {
  source = "../../"

  aws-region        = "${var.aws-region}"
  aws-profile       = "${var.aws-profile}"
  instance-tag-name = "${var.instance-tag-name}"
}
