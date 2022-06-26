terraform {
  required_version = "~> 1.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.21.0"
    }
  }

  experiments = [module_variable_optional_attrs]
}
