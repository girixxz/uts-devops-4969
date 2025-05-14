terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull image nginx
resource "docker_image" "nginx" {
  name = "nginx:latest"  # Perbaikan: menggunakan nama image yang benar
}

# Buat container dari image nginx dan mapping ke port 5000
resource "docker_container" "web_server" {
  name  = "uts-nginx"
  image = docker_image.nginx.name  # Perbaikan: mengakses image dengan .name
  ports {
    internal = 80    # Port dalam container
    external = 5000  # Port di host (localhost)
  }
}
