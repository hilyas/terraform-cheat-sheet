locals {
    local_file_name = "local_variable_hello.txt"
    content = "Hello World from local content variable!"
}

module "hello_module_calling_local_var" {
    source = "../hello_module"
    filename = local.local_file_name
    content = local.content
}

module "hello_module_calling_local_var_base64" {
    source = "../hello_module"
    filename = local.local_file_name
    content = base64encode(local.content)
}

module "hello_module_calling_var" {
    source = "../hello_module"
    filename = var.file_name
    content = var.content
}
