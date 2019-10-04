### Salesforce easy validate script

This script requires sfdx installed locally on the machine.

To install sfdx please navigate to below URL 

[[1]Install SFDX][sfdx]
[sfdx]: http://https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm "SFDX"


To use the script follow the below steps 

1. Clone the repo or copy build.sh to your local repository.
2. Chnage the file permission 
3. chmod 777 ./build.sh

To validate package from two different org 

`  ./build.sh {Source-ORG} {PackageName or ChangeSet Name} {Target-Org}`

