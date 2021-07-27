provider "docker" {
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  count = var.number
  image = docker_image.nginx.latest
  name  = "tutorial-${count.index}"
  ports {
    internal = 80
    #external = "808${count.index}"
  }
}
