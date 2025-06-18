module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.cidr_block
  name           = var.name
}


module "rds" {
  source = "./modules/rds"

  engine            = var.my-engine
  db_username       = var.my-db_username
  subnet-group-name = var.my-subnet-groupname
  db_name           = var.my-db_name
  vpc_id            = module.vpc.vpc_id
  private_subnets   = module.vpc.private_subnets
}

#  engine_version          = var.engine_version
#  instance_class          = var.instance_class
#  cluster_identifier      = var.cluster_identifier
#  vpc_id                  = var.vpc_id
#  subnets                 = var.subnets
#  security_group_ids      = var.security_group_ids