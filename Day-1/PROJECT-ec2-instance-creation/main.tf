provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resoursegroup" {
  name     = "TerraformPractice"
  location = "West Europe"
}

resource "azurerm_windows_virtual_machine" "virtualmachine" {
  name                = "Firstterramachine"
  resource_group_name = azurerm_resource_group.resoursegroup.name
  location            = azurerm_resource_group.resoursegroup.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"

}
