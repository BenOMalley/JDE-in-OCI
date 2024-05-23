
variable "tenancy_ocid" {
  type        = string
  description = "tenancy id"
  default     = "ocid1.tenancy.oc1..aaaaaaaauhwjfvdb7ikkhbd65s22iocra5gz6cjdg34cfwra4nvoslqzcxxq"

}
variable "user_ocid" {
  type        = string
  description = "user ocid"
  default     = "ocid1.user.oc1..aaaaaaaa7h36bqkg7vahphod47pea3xuzbh74o3rjjbovzcbgb7p4yp7s32a"
}
variable "fingerprint" {
  type        = string
  description = "unique fingerprint"
  default     = "50:ab:ea:62:71:cb:1c:31:c4:a1:ee:99:fe:55:9d:ae"
}
variable "private_key_path" {
  type        = string
  description = "Private key path of user profile"
  default     = ".oci/ben.omalley@fusion5.com.au_2024-05-12T07_34_12.703Z.pem"
}

variable "region" {
  type        = string
  description = "The region that is going to be built to"
  default     = "ap-sydney-1"
}

variable "compartment_ocid" {
  type        = string
  description = "Compartment that is going to be used"
  default     = "ocid1.compartment.oc1..aaaaaaaasii4cl2snqgx5znhanlmp354n64o2sd5f7h6c5ht4opmhhwliysa"

}

variable "VNC_ID" {
  type        = string
  description = "VCN ID"
  default     = "ocid1.vcn.oc1.ap-sydney-1.amaaaaaaqdrscryak76i5vpijwtswdyykthlq72tgisolfq56nywfmtxye5a"
}

variable "instance_vcpus" {
  default = 1
}

variable "instance_shape" {
  default = "VM.Standard.E3.Flex"
}

variable "num_paravirtualized_volumes_per_instance" {
  default = "1"
}

variable "instance_ocpus" {
  default = 1
}

variable "instance_shape_config_memory_in_gbs" {
  default = 1
}

variable "ssh_public_key" {
  type        = string
  description = "Public key path for instance"
  default     = ".oci/JDETrial.pub"
}

variable "ssh_private_key" {
  type        = string
  description = "Private key path for instance"
  default     = ".oci/JDETrial.ppk"
}

# Defines the number of instances to deploy
variable "num_instances" {
  default = "1"
}

# Defines the number of volumes to create and attach to each instance
# NOTE: Changing this value after applying it could result in re-attaching existing volumes to different instances.
# This is a result of using 'count' variables to specify the volume and instance IDs for the volume attachment resource.
variable "num_iscsi_volumes_per_instance" {
  default = "1"
}

variable "instance_image_ocid" {
  type = map(string)

  default = {
    # See https://docs.us-phoenix-1.oraclecloud.com/images/
    # Oracle-provided image "Oracle-Linux-8.9
    ap-sydney-1 = "ocid1.image.oc1.ap-sydney-1.aaaaaaaaccfswiajsa4bbazsltodsmt5t3mmxlg7f3fkqi2dgog4acl7gs2q"
  }
}

variable "flex_instance_image_ocid" {
  type = map(string)
  default = {
    ap-sydney-1 = "ocid1.image.oc1.ap-sydney-1.aaaaaaaaccfswiajsa4bbazsltodsmt5t3mmxlg7f3fkqi2dgog4acl7gs2q"
  }
}

variable "kms_key_ocid" {
  type        = string
  default     = "ocid1.keyversion.oc1.ap-sydney-1.fnsrifslaaeai.fcivmzbv7piaa.abzxsljrm7mjdez733dnpq27ov47ud7pa6fnx367r25gs2ovrp3vwmp53xga"
  description = "Pointer to the Key Management store in OCI"
}

variable "db_size" {
  default = "50" # size in GBs
}

variable "tag_namespace_description" {
  default = "Just a test"
}

variable "tag_namespace_name" {
  default = "testexamples-tag-namespace"
}
