#!/usr/bin/env bash

# Login as vagrant user
su - vagrant

# Compile a custom plugin
echo "Compiling custom plugin..."
go get github.com/petems/terraform-provider-extip

cd ~/go/src/github.com/petems/terraform-provider-extip

make build

# Copy the custom plugin to the folder where is our main.tf
echo "Copying compiled custom plugin to the required path"
mkdir -p /vagrant/terraform.d/plugins/linux_amd64

cp ~/go/bin/terraform-provider-extip /vagrant/terraform.d/plugins/linux_amd64/

# Changing directory - where is our main.tf
cd /vagrant

echo "Initialize and apply terraform"
terraform fmt

terraform init

terraform apply
