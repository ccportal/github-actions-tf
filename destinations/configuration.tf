terraform {
  required_version = "~> 1.4.2"
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
  version            = "~> 1.14.0"
  oauthclient_id     = var.TF_VAR_ID
  oauthclient_secret = var.TF_VAR_SECRET
  aws_region         = var.TF_VAR_REGION
}
