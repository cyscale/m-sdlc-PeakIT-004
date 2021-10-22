#!/bin/sh

RESOURCE_GROUP_NAME="msdlcpeakit004-rg"
STORAGE_ACCOUNT_NAME="msdlcpeakit004sa"

# Create Resource Group
az group create -l westeurope -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l westeurope --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME