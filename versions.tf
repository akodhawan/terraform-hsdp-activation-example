terraform {
  required_providers {
    hsdp = {
      source  = "philips-software/hsdp"
      version = ">= 0.23.2"
    }
    cloudfoundry = {
      source = "cloudfoundry-community/cloudfoundry"
    }
    twilio = {
      source  = "RJPearson94/twilio"
      version = ">= 0.16.0"
    }
    htpasswd = {
      source = "loafoe/htpasswd"
    }
  }
}

