terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.41.0"
    }
  }
}

provider "oci" {
  # Configuration options
  auth             = "APIKey"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region

}