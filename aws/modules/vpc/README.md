## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | Resource name prefix | `string` | - | yes |
| availability_zones | 사용할 availability zones | `list(string)` | - | yes |
| cidr_block | VPC에 할당한 CIDR block | `string` | - | yes |
| public_subnets | Public Subnet IPs | `list(string)` | - | yes |
| private_subnets | Private Subnet IPs | `list(string)` | - | yes |
| database_subnets | Database Subnet IPs | `list(string)` | - | yes |
| tags | Tag map | `map(any)` | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| vpc_id | VPC ID |
| vpc_cidr_block | VPC에 할당한 CIDR block |
| default_security_group_id | VPC default security group ID |
| default_network_acl_id | VPC default network ACL ID |
| internet_gateway_id | Internet gateway ID |
| public_subnets_ids | Public subnet IDs |
| private_subnets_ids | Private subnet IDs |
| database_subnets_ids | Database subnet IDs |
| database_subnet_group_id | Database subnet group ID |
| database_subnet_group_name | Database subnet group name |
| public_route_table_ids | Public route table IDs |
| private_route_table_ids | Private route table IDs |
| nat_ids | NAT gateway EIP IDs |
| nat_public_ips | NAT Gateway EIPs |
| nat_gateway_ids | NAT Gateway IDs |
