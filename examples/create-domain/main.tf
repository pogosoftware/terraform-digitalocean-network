module "domain" {
  source = "../../"

  create_vpc = false

  create_domain = true
  domain_name   = "sometest23nd7b.com"
  domain_records = [
    {
      type  = "A"
      name  = "www"
      value = "192.168.0.11"
    }
  ]
}
