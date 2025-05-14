variable "location" {
  type    = string
  default = "East US"
}

variable "appgw_name" {
  type    = string
  default = "example-appgw"
}

variable "sku_name" {
  type    = string
  default = "WAF_v2" # Change to "Standard_v2" if not using WAF
}

variable "sku_tier" {
  type    = string
  default = "WAF_v2"
}

variable "sku_capacity" {
  type    = number
  default = 2
}

#variable "ssl_certificate_data" {
 # type = string
#}

#variable "ssl_certificate_password" {
#  type = string
#}
