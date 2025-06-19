module "vpc" {
  source = "./modules/vpc"

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
  ec2_sg_id         = module.ec2.web-sg_id
}

#  engine_version          = var.engine_version
#  instance_class          = var.instance_class
#  cluster_identifier      = var.cluster_identifier
#  vpc_id                  = var.vpc_id
#  subnets                 = var.subnets
#  security_group_ids      = var.security_group_ids


module "ec2" {

  source = "./modules/ec2"

  subnet_id = module.vpc.public_subnets[0]
  ec2-name  = "demo-test"
  vpc_id    = module.vpc.vpc_id
}