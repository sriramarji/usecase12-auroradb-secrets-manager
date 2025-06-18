variable "cidr_block" {
  description = "value"
  type        = string
  default     = "192.168.0.0/16"
}

variable "name" {
  description = "value"
  type        = string
  default     = "demo-vpc"
}

variable "my-subnet-groupname" {
  description = "Name of the db_username"
  type        = string
  default     = "aurora-subnet-group"
}

variable "my-engine" {
  description = "Name of the db_username"
  type        = string
  default     = "aurora-mysql"
}

variable "my-db_username" {
  description = "Name of the db_username"
  type        = string
  default     = "admin"
}

variable "my-db_name" {
  description = "Name of the db_name"
  type        = string
  default     = "test"
}