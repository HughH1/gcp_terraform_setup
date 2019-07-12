variable "project" {

default = "striped-acrobat-243309"
}

variable "name" {
  default = "mean"
}
variable "machine_type" {
  default = "g1-small"
}

variable "zone" {
default = "europe-west2-c"
}

variable "image" {
default = "ubuntu-1804-lts"
}

variable "network" {
default = "default"
}

variable "ssh_user" {
default = "terraform"
}

variable "public_key" {
default = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
default = "~/.ssh/id_rsa"
}

variable "package_manager" {
default = "apt"
}

variable "update_package" {
default = {
"apt" = "sudo apt update && sudo upgrade -y"
}
}

variable "packages" {
default = [
"wget"
]
}

variable "install_package" {
default = {
"apt" = "sudo apt install -y"
}
}

variable "scripts"{
default = ["scripts/mean-script"]

}

variable "allowed_ports"{
default = ["22"]
}
