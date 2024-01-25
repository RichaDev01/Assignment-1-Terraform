resource "local_file" "file2" {
  content  = var.content_map["name"]
  filename = "${path.module}/file2.bar"
}