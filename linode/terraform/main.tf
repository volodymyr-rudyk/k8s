terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.27.1"
    }
  }
}

provider "linode" {
  token = var.token
}

variable "token" {
  description = "Auth token"
  type        = string
}

variable "region" {
  description = "Linode Region"
  default     = "us-east"
  type        = string
}

# instance vars
variable "linode_instance_type" {
  description = "Linode Instance Type"
  default     = "g6-nanode-1" # 1GB RAM, 1 CPU, 25GB SSD
  type        = string
}

variable "linode_image" {
  description = "Linode Image"
  default     = "linode/alpine3.17"
  type        = string
}
#------

# lke vars
variable "linode_lke_instance_type" {
  description = "Linode Instance Type"
  default     = "g6-standard-1" # 1GB RAM, 1 CPU, 25GB SSD
  type        = string
}
variable "kubernetes_version" {
  description = "Kubernetes Version"
  default     = "1.25"
  type        = string
}
#------

resource "linode_instance" "terraform-web" {
  group            = "Terraform"
  label            = "AlpineTestLabel"
  image            = var.linode_image
  region           = var.region
  type             = var.linode_instance_type
  tags             = ["simple", "test", "terraform-managed"]
  watchdog_enabled = false
}


#resource "linode_lke_cluster" "lke-be-cluster" {
#  label       = "lke-terraform"
#  k8s_version = var.kubernetes_version
#  region      = var.region
#  tags        = ["prod", "terraform-managed"]
#  pool {
#    count = 1
#    type  = var.linode_lke_instance_type
#    autoscaler {
#      min = 1
#      max = 3
#    }
#  }
#}

output "ip_address" {
  value = linode_instance.terraform-web.ip_address
}
