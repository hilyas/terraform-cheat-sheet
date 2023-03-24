data "local_file" "data_file" {
    filename = "${path.module}/files/data_file.txt"
}

resource "local_file" "hello_local_file" {
  content  = "Hello, World!"
  filename = "${path.module}/files/resource_file.txt"
}

resource "local_file" "local_file" {
    content = "${data.local_file.data_file.content}"
    filename = "${path.module}/files/resource_file_from_data.txt"
}

resource "local_file" "hello_destroy_file" {
  content  = "Hello, Destroy World!"
  filename = "${path.module}/files/resource_file_destroy.txt"
}

output "data_file_content" {
    value = "${data.local_file.data_file.content}"
}