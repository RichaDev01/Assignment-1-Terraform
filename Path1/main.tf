resource "local_file" "file1" { 
   content=local.surname
  filename = "${path.module}/file1.bar"
}
locals {
  name="richa"
  surname=var.surname
  age=21
}

# RANDOM ID
resource "random_id" "server" {
  keepers = {
    rndm_id = var.rndm_id
  }
  byte_length = 8
}

# RANDOM INTEGER
resource "random_integer" "priority" {
  min = 1
  max = var.max_val
  keepers = {
    rndm_int = var.rndm_int
  }
}

# RANDOM PASSWORD
resource "random_password" "password" {
  length           = 16
  special          = var.rndm_sensitive_val
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
