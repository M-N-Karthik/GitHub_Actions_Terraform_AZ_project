
terraform {
  backend "azurerm" {
    resource_group_name  = ""  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = ""                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  }



# terraform init -reconfigure  \
#   -backend-config="resource_group_name=rg-tfstate" \
#   -backend-config="storage_account_name=stterraform987" \
#   -backend-config="container_name=tfstate" \
#   -backend-config="key=dev.terraform.tfstate"


# az group create -n rg-tfstate -l eastus
# az storage account create -n stterraform987 -g rg-tfstate -l eastus --sku Standard_LRS
# az storage container create -n tfstate -g rg-tfstate --account-name stterraform987
