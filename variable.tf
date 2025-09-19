variable "address_space" {
  type = list(string)
}

variable "name" {
  type = string 
}

variable "nsg_name" {
  type = string 
}

variable "env" {
  type = string 
}

variable "nsg_resource_group" {
  type = string 
}

variable "nsg_location" {
  type = string 
}

variable "vnet_resource_group" {
  type = string 
}

variable "vnet_location" {
    type = string 
  validation {
    condition  =  contains(["eastus", "eastus1", "westus"], var.vnet_location) 
    error_message = "This location is not allowed"
  }
variable "dns_servers" {
  type = list(string)
}

}
