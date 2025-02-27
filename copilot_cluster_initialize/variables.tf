variable "access_key" {
  type        = string
  description = "AWS access key"
}

variable "security_key" {
  type        = string
  description = "AWS security key"
}

variable "controller_public_ip" {
  type        = string
  description = "controller public IP"
}

variable "controller_region" {
  type        = string
  description = "controller region"
}

variable "controller_username" {
  type        = string
  description = "controller username"
}

variable "controller_password" {
  type        = string
  description = "controller password"
}

variable "main_copilot_public_ip" {
  type        = string
  description = "main copilot public IP"
}

variable "main_copilot_private_ip" {
  type        = string
  description = "main copilot private IP"
}

variable "main_copilot_region" {
  type        = string
  description = "main copilot region"
}

variable "main_copilot_username" {
  type        = string
  description = "main copilot username"
}

variable "main_copilot_password" {
  type        = string
  description = "main copilot password"
}

variable "node_copilot_public_ips" {
  type        = list(string)
  description = "list of node copilot public IPs"
}

variable "node_copilot_private_ips" {
  type        = list(string)
  description = "list of node copilot private IPs"
}

variable "node_copilot_regions" {
  type        = list(string)
  description = "list of node copilot regions"
}

variable "node_copilot_usernames" {
  type        = list(string)
  description = "list of node copilot usernames"
}

variable "node_copilot_passwords" {
  type        = list(string)
  description = "list of node copilot passwords"
}

variable "node_copilot_data_volumes" {
  type        = list(string)
  description = "list of node copilot data volumes"
}

variable "node_copilot_names" {
  type        = list(string)
  description = "list of node copilot names"
}
