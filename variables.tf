variable "resource_group_name" {
  type    = string
  description = "Name of the resource group"
  default     = ""
}

variable "location" {
  type        = string
  description = "location of azure resource"
  default     = "eastus2" 
}

variable "tags" {
  type = map(string)
  default = {
    environment   = "dev"
    Owner         = "uyi"
    Date_Created  = "01-06-2023"
  }
}

variable "virtual_network_name" {
  type    = string
  description = "Name of the virtual network"
  default     = ""
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet-names" {
  type    = list(object({
    cidr = string
    name = string
  }))
  default = []
}
