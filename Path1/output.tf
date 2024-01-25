output "output_id"{
    value = random_id.server.id
}

output "output_password" {
    sensitive = true
  value = random_password.password
}