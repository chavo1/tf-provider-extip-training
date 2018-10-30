#!/usr/bin/env bash

su - vagrant

go get github.com/petems/terraform-provider-extip

cd ~/go/src/github.com/petems/terraform-provider-extip

make build

mkdir -p /vagrant/terraform.d/plugins/linux_amd64

cp ~/go/bin/terraform-provider-extip /vagrant/terraform.d/plugins/linux_amd64/

cd /vagrant

terraform init

terraform apply