# Minimum Secure SDLC - PeakIT 004

## The goal of the workshop

The goal is to get an initial overview on what Secure SDLC (Software Development Life Cycle) is and how should a minimum setup look like for you or your organization. There are at least a few ways to configure SDLC, and in this workshop we will try to use both cloud-native and self-maintained setups.

This tutorial contains a free, full, real-world solution for setting up an environment that is using DevSecOps technologies and practices for deploying and securing apps and cloud services/cloud infrastructure to Azure.

## What will we do in this workshop?

You will prepare a demo cloud environment to test the setup. You will be creating a Github account (if you don’t have it already), configure Github Actions CI/CD pipelines to inject security checks and controls in these processes.

![](images/peakit-004-background.jpg)

As a DevOps Engineer, you're are not writing the app, but instead, deploying it. We will be using a Python app already available on Github: [Example Uber app for developers](https://github.com/uber/Python-Sample-Application)

## Technology Details
You will be using the following technologies and platforms to set up a DevOps environment.

1. Azure
    - Azure will be used to host the application, cloud infrastructure, and any other services we may need to ensure the Uber app is deployed properly.
1. GitHub
    - To store the application and infrastructure/automation code and Github Actions
1. Python
    - Python will be used for the Uber app (it is written in Python) and some automation efforts that aren't in Terraform.
1. Terraform
   - Create an Azure ACR repository with Terraform
   - Create an AKS cluster
1. Docker
   - Create a Docker image
   - Store the Docker image in Azure ACR
1. Kubernetes
   - To run the Docker image that's created for the containerized Uber app. Kubernetes, in this case, AKS, will be used to orchestrate the container.
1. Automated testing with Github Actions
    - Testing Terraform code with Checkov
    - Testing Open Source Software (OSS) with Snyk
    - Testing Docker Image with Snyk
1. CI/CD
   - Use GitHub Action to create an AKS cluster

## Workshop

1. [Prerequisites](prerequisites.md)
1. [Create Storage Account for Terraform State file](Azure/1-Configure-Terraform-Remote-Storage.md) - When deploying Terraform there is a requirement that it must store a state file; this file is used by Terraform to map Azure Resources to your configuration that you want to deploy, keeps track of meta data and can also assist with improving performance for larger Azure Resource deployments.
1. [Create Azure AD Group for AKS Admins](Azure/2-Create-Azure-AD-Group-AKS-Admins.md) - The Azure AD Group will be used for AKS cluster access

In this scenario, the Terraform State file will be stored in remote state location of an Azure Storage Account.

1. Terraform - The purpose of the Terraform section is to create all of the Azure cloud services you'll need from an environment/infrastructure perspective to run the application.
    - [Create ACR](Terraform-AZURE-Services-Creation/1-Create-ACR.md)
    - [Create VNET](Terraform-AZURE-Services-Creation/2-Create-VNET.md)
    - [Create Log Analytics](Terraform-AZURE-Services-Creation/3-Create-Log-Analytics.md)
    - [Create AKS Cluster with relevant IAM roles](Terraform-AZURE-Services-Creation/4-Create-AKS-Cluster-IAM-Roles.md)
1. Docker - The purpose of the Docker section is to create a Docker image from the app that the organization is running on-prem (the app), containerize it, and store the container inside of a container repository. For the container repo, you'll use Azure ECR.
    - [Create the Docker Image](Docker/1-Create-Docker-Image.md)
    - [Log into Azure ACR Repository](Docker/Push%20Image%20To%20ACR.md)
1. Kubernetes - The purpose of the Kubernetes section is to connect to AKS locally and to write the Kubernetes manifest to deploy the Python app.
    - [Connect to ACR from the Terminal](kubernetes_manifest/1-Connect-To-ACR.md)
    - [Create a Kubernetes Manifest](kubernetes_manifest/2-Create-Kubernetes-Manifest.md)
    - [Deploy Uber App into Kubernetes](kubernetes_manifest/3-Deploy-App.md)
1. Automated Testing - The purpose of the Automation Testing section is to ensure that all of the Terraform and Open Source code is performing as it should be from a policy, security, and static code analysis perspective.
    - [Install and run Checkov](Static-Code-Analysis/1-Checkov-For-Terraform.md)
    - [Install and run Snyk Scan Code](Static-Code-Analysis/2-Snyk-For-OpenSourceCode.md)
    - [Install and run Snyk Scan Docker Image](Static-Code-Analysis/3-Snyk-For-DockerImage.md)
1. If we have the time: CI/CD - The purpose of this section is to automatically create an AKS cluster with CICD using GitHub Actions
    - [Create a GitHub Actions CI/CD pipeline](Terraform-AZURE-Services-Creation/5-Run-CICD-For-AKS-Cluster.md)

_Disclaimer - the purpose of this workshop is to raise awareness on the importance of using Secure SDLC and injecting security as early as possible in Software Development. It is not intended to be used in production and the author is not responsible for issues, vulnerabilities, incurred costs, or other situations arising from  deploying IaC or applications using the information stored in this repository. Most of the DevOps content was forked from and adapted for Microsoft Azure from the [DevOps-The-Hard-Way-AWS](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-AWS) repository._