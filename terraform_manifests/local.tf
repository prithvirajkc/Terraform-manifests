locals {
  registry_name = "${var.registry_name}${random_string.random01.id}"
}