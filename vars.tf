variable "default_tags" {
  type = map(string)
  default = {
    "env" = "aaron"
  }
  description = "aaron variables description"
}
variable "public_subnet_count" {
  type        = number
  description = "public subnet count desription (optional)"
  default     = 2
}
variable "private_subnet_count" {
  type        = number
  description = "private subnet count desription (optional)"
  default     = 2
}
variable "vpc_cidr" {
  type =string
  default = "10.0.0.0/16"
  description = "Main VPC CIDR block"
}
