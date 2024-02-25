variable "region" {
  description = "Variable for AWS region"
  type        = string
}

variable "ami_id" {
  type        = string
  description = "Variable for EC2 instances image"

  validation {
    condition     = length(var.ami_id) >= 12
    error_message = " AMI ID should be 12 characters"
  }
  validation {
    condition     = startswith(var.ami_id, "ami-")
    error_message = "AMI ID should start with \"ami-\" prefix"
  }
}

variable "instances_per_subnet" {
  type        = number
  description = "Number of instances"
  default     = 1
}

variable "profile" {
  type = string
}
