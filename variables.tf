variable "nr_of_macs" {
  type        = number
  description = "The number of MAC addresses you want to generate"
  default     = 1
}

variable "delimiter" {
  type        = string
  description = "The delimiter to join the different bytes. (Default: `:`)"
  default     = ":"
}
