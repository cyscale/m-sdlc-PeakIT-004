# Configure Storage Account for Terraform State File

In this step you create the location that will store the remote Terraform State file

## Create Blob Storage location for Terraform State file
1. Edit the [variables](/blob/main/Azure/create-terraform-storage.sh#L3-L4)
2. Run the script `./create-terraform-storage.sh`
3. The script will create
- Azure Resource Group
- Azure Storage Account
- Azure Blob storage location within Azure Storage Account