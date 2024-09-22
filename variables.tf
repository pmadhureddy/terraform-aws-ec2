variable "ami_id" {
    type = string
  
}

variable "instance_type" {
    default = "t3.micro"
    type = string
     validation {
        condition     = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
        error_message = "instance_type can only be one of t3.micro, t3.medium, t3.small"
    } 
  
}

variable "security_group_id" {
    type = list(string)
  
}