terraform {
  backend "s3" {
    bucket = "my-state-bucket-8899990"
    key    = "terraform_state/local_file"
    region = "us-east-1"
  }
}

resource "local_file" "hello_local_file" {
  content  = "Hello terraform REMOTE backend from module_2!"
  filename = "../backend_local_file/hello_local_file.txt"
}