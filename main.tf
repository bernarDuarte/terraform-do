terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0.0"
    }
  }
}

provider "digitalocean" {
  token = var.token_do
}

module "wp_stack"{
  source = "./modules/do-wp-stack"
  region = var.region
  wp_vm_count = var.wp_vm_count
  vm_ssh = digitalocean_ssh_key.ssh_name.fingerprint
}

resource "digitalocean_ssh_key" "ssh_name" {
  name       = "Terrafromada fio"
  public_key = file("~/.ssh/aula-terraform.pub")
}
