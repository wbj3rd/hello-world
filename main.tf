variable "walter" {
  type = string
  default = "you"
}

output "me" {
  value = var.walter
}