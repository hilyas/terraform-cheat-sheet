resource "null_resource" "test" {
    provisioner "local-exec" {
        command = "echo ${path.module} ${max(5,3,2)}"
    }
}

resource "null_resource" "triggers_test" {
    triggers = {
        config_content = filemd5("${path.module}/trigger_file.txt")
    }
    provisioner "local-exec" {
        command = "cat ${path.module}/trigger_file.txt"
    }
}