variable "aws_region" {
  description = "AWS region for this deployment"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "travelmemory"
}

variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.20.1.0/24"
}

variable "private_subnet_cidr" {
  type    = string
  default = "10.20.2.0/24"
}

variable "availability_zone" {
  description = "AZ in the selected region, e.g. us-east-1a"
  type        = string
  default     = "us-east-1a"
}

variable "key_name" {
  description = "Name of an existing EC2 key pair in aws_region"
  type        = string
}

variable "admin_cidr" {
  description = "Your current public IPv4 CIDR for SSH, e.g. 203.0.113.10/32"
  type        = string
  validation {
    condition     = can(cidrhost(var.admin_cidr, 0)) && endswith(var.admin_cidr, "/32")
    error_message = "Use a single IPv4 address with /32, for example 198.51.100.25/32."
  }
}

variable "web_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "db_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "root_volume_size" {
  type    = number
  default = 12
}
