
sfdx force:auth:web:login -r https://login.salesforce.com -a VSCodePlaygrand

sfdx config:set defaultusername=VSCodePlaygrand

sfdx force:org:list

sfdx force:org:display

sfdx force:source:retrieve -p "Profiles" 

sfdx force:source:retrieve -p ./force-ap

sfdx force:source:retrieve -m CustomObject -u curious_koala