variable "myregion" {
  type = string
  default = "us-east-2"
}

variable "accountId" {
  type = string
  default = "589137594782"
}
variable "cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "azs_subnets" {
  type = map
  default = {
    "us-east-2a" = "10.0.1.0/24"
    "us-east-2b" = "10.0.2.0/24"
    "us-east-2c" = "10.0.3.0/24"
  }
}