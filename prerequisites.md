# Prerequisites

## You should be

- Familiar with basic cloud computing and public cloud service providers such as AWS, GCP, or Azure.
- Comfortable with writing or copying some source code and work with it in a source code versioning system such as git.
- Eager to see how easy a minimum SDLC can be added to your daily workflow
- Some sort of cloud engineering/cloud knowledge experience. Although not all environments are running in the cloud, most of these roles will want it.
- Network, storage, and compute knowledge.

## Azure

### Create An Azure Account

To follow along with this tutorial, you should have an Azure account. If you don't already have one, you can sign up for a free 12 month trial [here](https://azure.microsoft.com/en-gb/free/search).

You should know that the tutorial for *Minimum Secure SDLC* will cost money because some of the services that you use in Azure will not be part of the free tier.

To learn more about the Azure Pricing Model so you understand what the cost will be, you can go [here](https://azure.microsoft.com/en-gb/pricing/calculator/)

### Use the Azure CLI

The Azure CLI is a way for you to interact with all Azure services at a programmatic level using the terminal.

To set this up, follow the directions [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

!!! Important - make sure to switch to the right Azure Subscription

> az account list --output table  
> az account set --subscription `SubscriptionId`

## Installations

You will need to download some software and services for this tutorial.

### Code Editor

Because code will be written for *Minimum Secure SDLC*, you will need a code editor. For the purposes of this tutorial, you can use [Visual Studio Code](https://code.visualstudio.com/download), which is a free code editor.

> You can use [Visual Studio Code Online](https://vscode.dev/) - Yay!

### Terraform

[Terraform Download](https://www.terraform.io/downloads.html)

### Docker

To build the Docker image, you can use Docker Desktop for Windows or MacOS. 

> We can use Github Actions also, if you don't want to install Docker Desktop

[Docker Desktop](https://www.docker.com/products/docker-desktop)

### Source Control
To store the code that you'll be writing, you can create your very own GitHub account to showcase your project.

[GitHub](https://www.github.com)