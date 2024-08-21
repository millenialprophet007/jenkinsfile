provider "local" {
  # No specific configuration needed for the local provider.
}

resource "local_file" "helloworld" {
  content  = "Hello, World!"
  filename = "${path.module}/helloworld.txt"
}

output "file_output" {
  value = local_file.helloworld.content
}
