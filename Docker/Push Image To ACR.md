# Push Image To ACR

The ECR repo will be where you store the Docker image that you created on your local computer in step 1.

## Log Into The ECR Repository
1. Log in to ACR with Azure CLI
`az acr login --name msdlcpeakit004acr`


## Tag The Docker image
1. Tag the Docker image
`docker tag uberapp msdlcpeakit004acr.azurecr.io/uberapp:v1`

## Push The Docker Image To ACR
1. Push the Docker image to ACR
`docker push msdlcpeakit004acr.azurecr.io/uberapp:v1`
