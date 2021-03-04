## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | Resource prefix | `string` | - | yes |
| vpc_id | VPC ID | `string` | - | yes |
| ami | Bastion EC2 AMI | `string` | - | yes |
| instance_type | Bastion EC2 instance type | `string` | `t3.nano` | no |
| availability_zone | Bastion EC2 availability zone | `string` | - | yes |
| subnet_id | Bastion EC2 Subnet ID | `string` | - | yes |
| ingress_cidr_blocks | Bastion SSH 접속을 허용할 CIDR block 리스트 | `list(string)` | - | yes |
| keypair_name | Bastion keypair name | `string` | - | yes |
| tags | Tag map | `map(any)` | - | yes |


## Outputs

| Name | Description |
|------|-------------|
| instance_id | Bastion EC2 ID |
| bastion_sg_id | Security gateway ID to bastion |
| ssh_from_bastion_sg_id | Security gateway ID from bastion |
| eip_id | Bastion EIP ID |

