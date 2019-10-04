#!/bin/bash
# Author: Nagendra Balachandra

echo "Running SFDC Build Process"

echo "Obtaining package $2 from the org $1 "
sfdx force:mdapi:retrieve -u $1 -p $2 -r ./deploy/

echo "Extrating the files from the zip"
unzip ./deploy/unpackaged.zip -d ./deploy/Deployment
rm -rf ./deploy/unpackaged.zip

echo "Validating the package $2 aginst the org $3"
sfdx force:mdapi:deploy -d ./deploy/Deployment/$2  -u $3 -c

echo "Deployment Report"
sfdx force:mdapi:deploy:report -u $3 -w 100

echo "Cleaning up the repository"
rm -rf ./deploy/%