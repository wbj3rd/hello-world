
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.34.0"
    }
  }
}
resource "aws_ami" "example" {
  name                = "softsci-terraform-example"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"
  imds_support        = "v2.0" # Enforce usage of IMDSv2. You can safely remove this line if your application explicitly doesn't support it.
 
}
provider "aws" {
  # Configuration options
}
variable "walter" {
  type = string
  default = "you"
}

output "me" {
  value = var.walter
}