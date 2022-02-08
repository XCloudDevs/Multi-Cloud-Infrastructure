terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    google = {
      source = "hashicorp/google"
      version = "4.7.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.7.1"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

provider "google" {
  credentials = file("gcp_auth.json")
  project     = "multicloud-with-aws"
}

provider "github" {
  token = var.git_access_token
}

# gcloud container clusters get-credentials my-gke-cluster --region asia-southeast1 --project multicloud-with-aws
provider "kubernetes" {
  # load_config_file = "false"

  host     = "https://${google_container_cluster.gke.endpoint}"
  # username = var.usergke
  # password = var.passgke
  client_certificate = base64decode(
    google_container_cluster.gke.master_auth[0].client_certificate,
  )
  client_key = base64decode(
    google_container_cluster.gke.master_auth[0].client_key,
  )
  cluster_ca_certificate = base64decode(
    google_container_cluster.gke.master_auth[0].cluster_ca_certificate,
  )
} 