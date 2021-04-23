terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_pet" "pet" {
  length = 4
}

resource "null_resource" "list" {
  triggers = {
    timestamp = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "env"
    interpreter = ["sh", "-c"]
  }
}
