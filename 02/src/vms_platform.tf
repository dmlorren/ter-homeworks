# variable "vm_db_name" {
#  type        = string
#  default     = "netology-develop-platform-db"
#  description = "Name vm_db_name"
# }

# variable "vm_db_core" {
#  type        = number
#  default     = 2
#  description = "Cores vm_db"
# }

# variable "vm_db_memory" {
#  type        = number
#  default     = 2
#  description = "Memory vm_db"
# }

# variable "vm_db_core_fraction" {
#  type        = number
#  default     = 20
#  description = "Core fraction vm_db"
# }

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "preemptible_web"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "preemptible_db"
}

variable "vm_web_platform" {
  type        = string
  default     = "standard-v1"
  description = "platform_web"
}

variable "vm_db_platform" {
  type        = string
  default     = "standard-v1"
  description = "platform_db"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "family_web"
}

variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "family_db"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "nat_web"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "nat_db"
}

variable "vm_web_ssh_key" {
  type        = string
  default     = null
  description = "ssh-key_web"
}

variable "vm_db_ssh_key" {
  type        = string
  default     = null
  description = "ssh-key_db"
}

#выбираем зону для нового сервиса, согласно ТЗ зона должна быть ru-central1-b

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "zone_db"
}

variable "db_subnet" {
  type        = string
  default     = "develop-db"
  description = "db_subnet"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

# блок для задания 6
variable "vms_resources" {
  type = map(map(number))
  default = {
    web = {
    cores = 2
    memory = 1
    core_fraction = 5
    }
    db = {
    cores = 2
    memory = 2
    core_fraction = 20
     }
   }
 }


variable "vms_metadata" {
  type = map(string)
  default = {
    serial-port-enable = "1"
    ssh_keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKTwkYsVoXBBrWz0W6n30wOlcIjaAd8y0OOuAkUBFNn7 dmlorren@ubunty2004"
  }
}