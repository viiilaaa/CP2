resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/inventory.tmpl", {
    vm_ip    = module.vm-create.public_ip
    acr_name = module.acr-create.acr_login_server
    vm_admin_user  = module.vm-create.vm_admin_username
  })
  
  filename = "${path.module}/../ansible/inventory.ini"
}