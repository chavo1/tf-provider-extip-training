# This repo contains sample how to run locally a custom plugin.

### Requirments

1. [Vagrant](https://www.vagrantup.com/) installed - it's needed since plugin will be compiled in the VM.
2. A basic knowledge about [Terraform](https://www.terraform.io/).
### More info could be found on following repo:

[terraform-provider-extip](https://github.com/petems/terraform-provider-extip)
### Usage:

1. Clone the repo.
2. Than:
```
vagrant up
```
3. At the end of the proccess will be printed the current external IP as a data source.
#### Needed software with notes could be found as follow:
- [script/provision.sh](https://github.com/chavo1/vagrant-go/blob/master/scripts/provision.sh)
#### How it is compilled with notes:
- [script/plugin.sh](https://github.com/chavo1/vagrant-go/blob/master/scripts/plugin.sh)

