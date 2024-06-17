# все локальные переменные должны быть описаны в variables
# переменные zone выдернуты из variables (по дефолту) и vms_platform
# vm_platform_instance_name и vm_platform_db_instance_name нужно закинуть в main.tf в блок с ресурсами

locals {
#  vm_inst_name_web = "${var.default_zone}-${var.instance}-${var.name_web}"
#  vm_inst_name_db  = "${var.vm_db_zone}-${var.instance}-${var.name_db}"
  vm_inst_name_web = "${var.instance}-${var.name_web}"
  vm_inst_name_db  = "${var.instance}-${var.name_db}"
}