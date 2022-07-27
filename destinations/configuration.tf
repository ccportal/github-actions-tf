terraform {
  required_version = "~> 1.2.1"
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