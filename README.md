
sfdx force:auth:web:login -r https://login.salesforce.com -d -a curious_koala
sfdx force:org:display
sfdx force:project:create -n sampleProj

//Apexクラス
sfdx force:source:retrieve -m ApexClass -u curious_koala
sfdx force:source:retrieve -m ApexTrigger -u curious_koala
sfdx force:source:retrieve -m ApexPage -u curious_koala

sfdx force:source:retrieve -m CustomObject -u curious_koala
sfdx force:source:retrieve -m StaticResource -u curious_koala
sf retrieve metadata --metadata CustomObject
sfdx force:source:retrieve -m CustomTab

//Lightning Auraコンポーネント
sfdx force:source:retrieve -m AuraDefinitionBundle -u curious_koala
//Lightning Webコンポーネント
sfdx force:source:retrieve -m LightningComponentBundle -u curious_koala

sfdx force:mdapi:retrieve --retrievetargetdir force-app_1 -k package.xml