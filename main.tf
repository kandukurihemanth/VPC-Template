# Declare the data source, it will fetch the all availability zones in the specified region
/*data "aws_availability_zones" "available" {
  state = "available"
}*/

# VPC Module
module "vpc" {
  
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.4"

  create_vpc                                           = var.create_vpc
  name                                                 = var.vpc_name
  cidr                                                 = var.cidr
  enable_ipv6                                          =  var.enable_ipv6
  private_subnet_ipv6_prefixes                         = var.private_subnet_ipv6_prefixes
  public_subnet_ipv6_prefixes                          = var.public_subnet_ipv6_prefixes
  outpost_subnet_ipv6_prefixes                         = var.outpost_subnet_ipv6_prefixes
  database_subnet_ipv6_prefixes                        = var.database_subnet_ipv6_prefixes
  redshift_subnet_ipv6_prefixes                        = var.redshift_subnet_ipv6_prefixes
  elasticache_subnet_ipv6_prefixes                     = var.elasticache_subnet_ipv6_prefixes
  intra_subnet_ipv6_prefixes                           = var.intra_subnet_ipv6_prefixes
  assign_ipv6_address_on_creation                      = var.assign_ipv6_address_on_creation
  private_subnet_assign_ipv6_address_on_creation       = var.private_subnet_assign_ipv6_address_on_creation
  public_subnet_assign_ipv6_address_on_creation        = var.public_subnet_assign_ipv6_address_on_creation
  outpost_subnet_assign_ipv6_address_on_creation       = var.outpost_subnet_assign_ipv6_address_on_creation
  database_subnet_assign_ipv6_address_on_creation      = var.database_subnet_assign_ipv6_address_on_creation
  redshift_subnet_assign_ipv6_address_on_creation      = var.redshift_subnet_assign_ipv6_address_on_creation
  elasticache_subnet_assign_ipv6_address_on_creation   = var.elasticache_subnet_assign_ipv6_address_on_creation
  intra_subnet_assign_ipv6_address_on_creation         = var.intra_subnet_assign_ipv6_address_on_creation
  secondary_cidr_blocks                                = var.secondary_cidr_blocks
  instance_tenancy                                     = var.instance_tenancy
  public_subnet_suffix                                 = var.public_subnet_suffix
  private_subnet_suffix                                = var.private_subnet_suffix
  outpost_subnet_suffix                                = var.outpost_subnet_suffix
  intra_subnet_suffix                                  = var.intra_subnet_suffix
  database_subnet_suffix                               = var.database_subnet_suffix
  redshift_subnet_suffix                               = var.redshift_subnet_suffix
  elasticache_subnet_suffix                            = var.elasticache_subnet_suffix
  public_subnets                                       = var.public_subnets
  private_subnets                                      = var.private_subnets
  outpost_subnets                                      = var.outpost_subnets
  database_subnets                                     = var.database_subnets
  redshift_subnets                                     = var.redshift_subnets
  elasticache_subnets                                  = var.elasticache_subnets
  intra_subnets                                        = var.intra_subnets
  create_database_subnet_route_table                   = var.create_database_subnet_route_table
  create_redshift_subnet_route_table                   = var.create_redshift_subnet_route_table
  enable_public_redshift                               = var.enable_public_redshift
  create_elasticache_subnet_route_table                = var.create_elasticache_subnet_route_table
  create_database_subnet_group                         = var.create_database_subnet_group
  create_elasticache_subnet_group                      = var.create_elasticache_subnet_group
  create_redshift_subnet_group                         = var.create_redshift_subnet_group
  create_database_internet_gateway_route               = var.create_database_internet_gateway_route
  create_database_nat_gateway_route                    = var.create_database_nat_gateway_route
  azs                                                  = var.azs
  enable_dns_hostnames                                 = var.enable_dns_hostnames
  enable_dns_support                                   = var.enable_dns_support
  enable_classiclink                                   = var.enable_classiclink
  enable_classiclink_dns_support                       = var.enable_classiclink_dns_support
  enable_nat_gateway                                   = var.enable_nat_gateway
  nat_gateway_destination_cidr_block                   = var.nat_gateway_destination_cidr_block
  single_nat_gateway                                   = var.single_nat_gateway
  one_nat_gateway_per_az                               = var.one_nat_gateway_per_az
  reuse_nat_ips                                        = var.reuse_nat_ips
  external_nat_ip_ids                                  = var.external_nat_ip_ids
  external_nat_ips                                     = var.external_nat_ips
  map_public_ip_on_launch                              = var.map_public_ip_on_launch
  customer_gateways                                    = var.customer_gateways
  


}