### AWS VPC Module

This module creates following resources. We are using HA, we are getting first 2 AZ automatically.
* VPC
*Internet Gateway with VPC Association
* 2 Public subnets in 1a and 1b
* 2 Private subnets in 1a and 1b
* 2 Database subnets in 1a and 1b
* Elastic IP
* NAT Gateway in 1a public subnet 
* Public Route Table
* Private Route Table
* Database Route Table
* Subnets and Route table associations
VPC peering if user requests
* Adding the peering route i  default VPC, if user don't provide acceptor VPC explicitly
* Adding the peering routes in public, private and database route tables

### Inputs
* Project_name (Required) - your project name
* environment (Required) - which environment you are working in
* vpc_cidr (Optional) -Default value is 10.0.0.0/16, user can override.
* enable_dns_hostnames (Optional) - Default value is true
* common_tags (Optional) - Better to provide
* vpc_tags (Optional) - Default value is empty. type is map
* igw_tags (Optional) - Default value is empty. type is map 
* public_subnets_cidr (Required) - user must provide 2 valid public subnets cidr
* public_subnets_tags (Optional) -  Default value is empty. type is map.
* Private_subnets_cidr (Required) - user must provide 2 valid private subnets cidr
* private_subnets_tags (Optional) - Default value is empty. type is map.
* Database_subnets_cidr (Required) - user must provide 2 valid database subnets cidr
* Database_subnets_tags (Optional) - Default value is empty. type is map.
* nat_gateway_tags (Optional) - Default value os empty. type is map.
* public_route_table_tags (Optional) - Default value is empty. type is map
* private _route_table_tags (Optional) - Default value is empty. type is map
* Database_route_table_tags (Optional) - Deafult value is empty. type is map
* is_peering_required(Optionla) - Default value is false
* acceptor_vpc_id (Optional) - default value is default vpc ID
* vpc_peering_tags (optional) - default value is empty. type is map.

### outputs
* vpc_id  - VPC ID created
* public_subnet_ids -2 public subnet ID created
* private_subnet_ids - 2 private subnet ID created
* database_subnet_ids - 2 database subnet ID created