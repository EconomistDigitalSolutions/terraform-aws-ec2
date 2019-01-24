module "terraform-aws-ec2" {
  source = "../../"

  aws-region        = "${var.aws-region}"
  aws-profile       = "${var.aws-profile}"
  instance-tag-name = "${var.instance-tag-name}"
  instance-type     = "${var.instance-type}"
  user-data-script  = "${var.user-data-script}"
  instance-ami      = "${var.instance-ami}"
  instance-key-name = "${var.instance-key-name}"
}
