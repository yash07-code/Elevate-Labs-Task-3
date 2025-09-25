terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

# Pull nginx image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Run nginx container
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "terraform-nginx"
  ports {
    internal = 80
    external = 8080
  }
}
