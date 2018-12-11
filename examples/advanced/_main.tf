module "terraform-aws-ec2" {
  source = "../../"

  aws-region        = "${var.aws-region}"
  aws-profile       = "${var.aws-profile}"
  user-data-script  = "${var.user-data-script}"
  instance-ami      = "${var.instance-ami}"
  instance-key-name = "${var.instance-key-name}"
  instance-tag-name = "${var.instance-tag-name}"
  iam-role-name     = "${var.iam-role-name}"
}
