variable "location" {}
variable "cidr" {}
variable "env" {
    type = string
    validation {
      condition = contains(["dev", "test", "prod"], var.env)
      error_message = "Env must be one of dev test prod"
    }
}