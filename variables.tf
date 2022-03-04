variable "primary_location" {
  type = string
  description = "Primary Location"
  default = "US West 2"
}

variable "secondary_location" {
  type = string
  description = "Secondary Location"
  default = "UK West"
}

variable "location_map" {
  type = map
  default = {
    "pri"  = "UK South"
    "sec" = "UK West"
  }
}

variable "set_password" {
  type = bool
  default = false
}

variable "location_list" {
  type = list
  default = ["UK South", "UK West", "North Europe"] 
}