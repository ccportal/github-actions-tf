terraform {
  required_version = "~> 1.2.1"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.3.0"
    }
  }
}

variable "TF_VAR_ID" {
  type = string  
}

variable "TF_VAR_SECRET" {
  type = string  
}

variable "TF_VAR_REGION" {
  type = string  
}

provider "genesyscloud" {
  oauthclient_id = var.TF_VAR_ID
  oauthclient_secret = var.TF_VAR_SECRET
  aws_region = var.TF_VAR_REGION
}


resource "genesyscloud_tf_export" "export" { 
  directory          = "./export" 
  resource_types     = ###RESOURCES###
  include_state_file = false 
 }