###cloud vars
#variable "token" {
#  type        = string
#  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
#}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

###ssh vars
#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKTwkYsVoXBBrWz0W6n30wOlcIjaAd8y0OOuAkUBFNn7 dmlorren@ubunty2004"
#  description = "ssh-keygen -t ed25519"
#}

#variable "vm_web_family" {
#  type        = string
#  default     = "ubuntu-2004-lts"
#  description = "family"
#}

#variable "vm_web_name" {
#  type        = string
#  default     = "netology-develop-platform-web"
#  description = "vm"
#}

#variable "vm_web_platform" {
#  type        = string
#  default     = "standard-v1"
#  description = "web_platform"
#}

#variable "vm_web_cores" {
#  type        = string
#  default     = "2"
#  description = "web_cores"
#}

#variable "vm_web_memory" {
#  type        = string
#  default     = "1"
#  description = "web_memory"
#}

#variable "vm_web_core_fraction" {
#  type        = string
#  default     = "5"
#  description = "web_cores_fraction"
#}

#variable "vm_web_preemptible" {
#  type        = bool
#  default     = true
#  description = "web_scheduling_policy"  
#}

#variable "vm_web_nat" {
#  type        = bool
#  default     = true
#  description = "network_interface"
#}

###ssh vars
#variable "vm_web_ssh_key" {
#  type        = string
#  default     = null
#  description = "metadata ssh-key for vm"
#}

variable "vms_ssh_root_key" {
  type        = string
  description = "ssh-keygen -t ed25519"
}

# новые переменные для задания 5
variable "instance" {
  type        = string
  default = "netology-develop-platform"
}

variable "name_web" {
  type        = string
  default = "web"
}

variable "name_db" {
  type        = string
  default = "db"
}
