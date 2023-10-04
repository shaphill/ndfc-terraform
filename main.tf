terraform {
  required_providers {
    dcnm = {
      # The CiscoDevNet/dcnm provider supports both NDFC and DCNM
      source = "CiscoDevNet/dcnm"
    }
  }
}

provider "dcnm" {
  username = "admin"
  password = "password"
  url      = "https://10.0.223.207"
  insecure = true
  platform = "dcnm"
}

resource "dcnm_inventory" "cml" {
  fabric_name     = "cml"
  username        = "cisco"
  password        = "cisco"
  max_hops        = 2
  preserve_config = "false"
  auth_protocol   = 0
  config_timeout  = 10

  switch_config {
    ip   = "10.0.223.185"
    role = "border_gateway_spine"
  }
  switch_config {
    ip   = "10.0.223.186"
    role = "spine"
  }
  switch_config {
    ip   = "10.0.223.187"
    role = "leaf"
  }
  switch_config {
    ip   = "10.0.223.188"
    role = "leaf"
  }
  switch_config {
    ip   = "10.0.223.189"
    role = "leaf"
  }
  switch_config {
    ip   = "10.0.223.190"
    role = "leaf"
  }
}
