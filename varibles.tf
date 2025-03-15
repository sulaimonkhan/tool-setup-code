variable "tools" {
  default = {

    vault = {
      port          = 8200
      volume_size   = 20 
      instance_type = "t3.small"
    }
  }
} 


variable "zone_id" {
  default = "Z089389422YOGJM26LZ9K"  
}

variable "domain_name" {
  default = "sulaimondevopsb72.online"  
}
