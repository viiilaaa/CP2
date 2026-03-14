resource "local_file" "ansible_secrets" {
  content = templatefile("${path.module}/secrets.tmpl", {
    acr_password = module.acr-create.acr_admin_password
    acr_username = module.acr-create.acr_admin_username
    acr_server   = module.acr-create.acr_login_server
    aks_name     = module.aks-create.aks_name
  })
  
  filename        = "${path.module}/../ansible/secrets.yml"
  
}