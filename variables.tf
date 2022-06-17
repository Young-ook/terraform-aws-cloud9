### network
variable "subnet" {
  description = "The subnet ID to deploy your cloud9 environment"
  type        = string
  default     = null
}

### workspace
variable "instance_type" {
  description = "The instance type for cloud9 environment"
  default     = "t2.micro"
}

variable "connection_type" {
  description = "The connection type used for connecting to a cloud9 instance."
  default     = "CONNECT_SSM"
  validation {
    condition     = contains(["CONNECT_SSM", "CONNECT_SSH"], var.connection_type)
    error_message = "Valid values are: CONNECT_SSH, CONNECT_SSM."
  }
}

variable "automatic_stop_time_minutes" {
  description = "The connection type for cloud9 access"
  type        = number
  default     = 30
}

### description
variable "name" {
  description = "Resource name of your cloud id environment"
  type        = string
  default     = ""
}

variable "desc" {
  description = "Description for your cloud ide environment"
  type        = string
  default     = null
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}
