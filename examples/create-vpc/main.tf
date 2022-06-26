module "vpc" {
  source = "../../"

  create_vpc      = true
  vpc_region      = "fra1"
  vpc_name        = "example-vpc"
  vpc_description = "This is example vpc"
  vpc_ip_range    = "192.168.10.0/20"

  create_domain = false
}
