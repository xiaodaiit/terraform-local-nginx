terraform {
  required_version = "= v0.15.4"
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.14.0"
    }
  }
}

