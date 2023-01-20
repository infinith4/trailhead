
sfdx force:auth:web:login -r https://login.salesforce.com -d -a curious_koala
sfdx force:org:display
sfdx force:project:create -n sampleProj


https://yhayashi30.org/blog/2019/09/23/vscode-orgbrowser/
https://developer.salesforce.com/tools/vscode/en/user-guide/org-browser#opening-the-org-browser

org browser で取得する

https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_retrieve_commands_unified.htm?q=retrieve

https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_source.htm#cli_reference_force_source_retrieve

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

https://developer.salesforce.com/docs/atlas.ja-jp.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_retrieve_man_pack.htm
sfdx force:mdapi:retrieve -s -r ./mdapipkg -u <username> -p <package name>

sfdx force:mdapi:retrieve -s -r ./mdapipkg -u curious_koala -p "curious_koala_package"


sf retrieve metadata --source-dir ./force-app/main/default/metadatatest

sfdx force:source:retrieve -p ./force-app/main/default/metadatatest

