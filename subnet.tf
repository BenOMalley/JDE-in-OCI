// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0.


// A regional subnet will not specify an Availability Domain
resource "oci_core_subnet" "regional_subnet" {
  cidr_block     = "10.0.2.0/24"
  display_name   = "regionalSubnet"
  dns_label      = "regionalsubnet"
  compartment_id = var.compartment_ocid
  vcn_id         = var.VNC_ID
  # security_list_ids = [oci_core_vcn.vcn1.default_security_list_id]
  # route_table_id    = oci_core_vcn.vcn1.default_route_table_id
  # dhcp_options_id   = oci_core_vcn.vcn1.default_dhcp_options_id
}

