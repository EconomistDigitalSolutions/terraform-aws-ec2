# Terraform for EC2 instances

Automatic deployment and management of EC2 instances using Terraform.

<hr/>

## WWH - What, Why, How

* **What?** This is a Terraform module to construct, deploy and manage EC2 instances.

* **Why?** Any application that requires a dedicated server can make use of this module.

* **How?** This module creates a single EC2 instance. The instance type and dimensions are configurable.

<hr/>

## Implementation details

The stack created by this terraform module is composed of:
  * Compute
    * EC2 instance
  * Network
    * Virtual Private Cloud
    * Internet Gateway
    * Security Group
    * Route table
    * Subnet
    

<hr/>

## Input/Output

### Input

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws-profile | The name of the AWS shared credentials account. | string | `aws-profile` | yes |
| aws-region | The AWS region | string | `aws-region` | yes |
| iam-role-name | The IAM role to assign to the instance | string | `role-name` | no |
| ig-tag-name | The name to apply to the Internet gateway tag | string | `aws-ig-created-with-terraform` | no |
| instance-ami | The AMI (Amazon Machine Image) that identifies the instance | string | `ami-01419b804382064e4` | no |
| instance-associate-public-ip | Defines if the EC2 instance has a public IP address. | string | `true` | no |
| instance-key-name | The name of the SSH key to associate to the instance. Note that the key must exist already. | string | `engagement-key` | no |
| instance-tag-name | instance-tag-name | string | `EC2-instance-created-with-terraform` | no |
| instance-type | The instance type to be used | string | `t2.micro` | no |
| sg-tag-name | The Name to apply to the security group | string | `SG-created-with-terraform` | no |
| subnet-cidr-block | The CIDR block to associate to the subnet | string | `10.0.1.0/24` | no |
| subnet-tag-name | The Name to apply to the VPN | string | `VPN-created-with-terraform` | no |
| user-data-script | The filepath to the user-data script, that is executed upon spinning up the instance | string | "" | no |
| vpc-cidr-block | The CIDR block to associate to the VPC | string | `10.0.0.0/16` | no |
| vpc-tag-name | The Name to apply to the VPC | string | `VPC-created-with-terraform` | no |

### Outputs

| Name | Description |
|------|-------------|
| instance-id | The EC2 instance ID |
| instance-public-dns | The EC2 instance public DNS |

<hr/> 

## ToDo's

* Improve documentation 

<hr/>

## Resources

* terraform resource [aws_instance](https://www.terraform.io/docs/providers/aws/r/instance.html)
* terraform [VPC](https://www.terraform.io/docs/providers/aws/r/vpc.html)
* terraform [subnet](https://www.terraform.io/docs/providers/aws/r/subnet.html)
* aws explains [VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)
* aws explains [internet gateway](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html)
* terraform [security groups](https://www.terraform.io/docs/providers/aws/r/security_group.html)
* terraform [route table](https://www.terraform.io/docs/providers/aws/r/route_table.html)
* stack question with good explanation about vpc peering [here](https://stackoverflow.com/questions/50345106/vpc-peering-issues-between-bastion-and-app-server-ec2)
* good resource explaining teraform vpc and subnet creation [here](https://hackernoon.com/manage-aws-vpc-as-infrastructure-as-code-with-terraform-55f2bdb3de2a)

<hr/>