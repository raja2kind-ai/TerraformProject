/*
output "resource_group_name" {

  description = "showing the resource group"

  value = azurerm_resource_group.my_rg.name

}
output "publicip" {

  description = "showing the public ip address"

  value = azurerm_public_ip.web_vm_publicip.ip_address

}

output "privateip" {

  description = "showing the private ip address"

  value = azurerm_network_interface.web_nic.private_ip_address
}
*/

output "vm_private_ips" {
  description = "Private IP of all the linux VMs"

  value = {
    for vm_name, nic in azurerm_network_interface.web_nic :
    vm_name => nic.private_ip_address
    #pub_ip => nic.PublicIPAddress
  }
  
}

/*
output "load_balancer_public_ip" {
  description = "The public IP address assigned to the Azure Load Balancer."
  value       = azurerm_public_ip.raja-terraform-rg.ip_address
}
*/

