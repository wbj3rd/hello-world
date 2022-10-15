variable "walter" {
  type = string
  default = "me"
}

output "me" {
  value = var.walter
}