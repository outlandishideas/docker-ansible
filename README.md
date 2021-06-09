# Outlandish Docker ansible image

Code that creates a docker image containing ansible and other necessary tools for deployment of Outlandish projects. 

Base docker image: python:3.8.7-buster

Installed tools: 
- Ansible v2.10.5
- git
- openssh-client
- boto3
- boto

## Usage

This image is intended to be used via CI. 
In your .gitlab-ci.yml, call this image as:
`image: outlandish/ansible:X.Y.Z`

## How to create a new version of this docker image

- Do any changes you want in the `Dockerfile`
- Run `docker build -t outlandish/ansible:X.Y.Z .`
Where X, Y, Z are your version. Until now we have been using as version the version of ansible we have installed. If more changes happen while the ansible version remains the same, add a minor version (example: 2.10.5.2 )

##  How to deploy it to docker hub

You will need: 
- To have an account to the docker hub registry ( https://hub.docker.com/ )
- to be logged in (from your commandline): https://docs.docker.com/engine/reference/commandline/login/
- to have been given access to the outlandish namespace

- After you have build your new docker image, you can push it with the following command `docker push outlandish/ansible:X.Y.Z` 



