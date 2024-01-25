resource "local_file" "file3" {
  content  = var.content_list[1]
  filename = "${path.module}/file3.bar"
}