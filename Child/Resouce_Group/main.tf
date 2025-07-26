# resource "azurerm_resource_group" "name" {
#   name     = var.resource_group_name
#   location = var.resource_group_location

# }

# resource "azurerm_storage_account" "storage_acct_name" {
#   depends_on = [ azurerm_resource_group.name ]
#        name= "stgacct16072025"
#     resource_group_name = var.resource_group_name
#     location = var.resource_group_location
#     account_tier =  "Standard"
#     account_replication_type = "GRS"
  
# }

resource "azurerm_resource_group" "name" {
    count =3 
  name     = "resource-group${count.index}"
  location = "east us"

}



