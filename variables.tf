variable "instance_group" {
  type    = string
  default = "https://www.googleapis.com/compute/v1/projects/cobalt-howl-274406/zones/asia-southeast1-c/instanceGroupManagers/gke-my-gke-cluster-my-gke-pool-9bd54088-grp"
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}

variable "name_vpc_gke" {
  type    = string
  default = "developer"
}

variable "name_subnet_gke" {
  type    = string
  default = "dev-subnet-1"
}

variable "gke_cluster_name" {
  type    = string
  default = "my-gke-cluster"
}

variable "gke_nodepool_name" {
  type    = string
  default = "my-gke-pool"
}

variable "userrds" {
  type    = string
  default = "admin"
}

variable "passrds" {
  type    = string
  default = "password-rds"
}

variable "db" {
  type    = string
  default = "db_gke"
}

variable "usergke" {
  type    = string
  default = "master"
}

variable "passgke" {
  type    = string
  default = "password-gke"
}

variable "app" {
  type    = string
  default = "wordpress"
}

variable "tier" {
  type    = string
  default = "frontend"
}

variable "subnet_group" {
  type    = string
  default = "mysql-subnet-group"
}

variable "pvc_name" {
  type    = string
  default = "pvc-wordpress"
}

variable "image_name" {
  type    = string
  default = "wordpress"
}

variable "deployment_name" {
  type    = string
  default = "wordpress-deploy"
}

variable "svc_name" {
  type    = string
  default = "svc-wordpress"
}

variable "port_no" {
  default = 80
}

variable "aws_region" {
  type        = string
  description = "VPC Region"
  default     = "ap-south-1"
}

variable "aws_access_key" {
  type        = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
}

variable "git_access_token" {
  type        = string
  description = "Github access token"
}

variable "github_repos" {
  type = list(string)
}

variable "user" {
  type = list(string)
}
