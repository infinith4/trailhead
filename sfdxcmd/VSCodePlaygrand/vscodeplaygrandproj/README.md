1.project を作成する

https://qiita.com/shunkosa/items/e6248520bff90f397158#:~:text=%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%83%91%E3%83%AC%E3%83%83%E3%83%88%E3%82%92%E9%96%8B%E3%81%8D(Ctrl,%E9%81%B8%E6%8A%9E%E3%81%97%E3%81%A6OK%E3%81%A7%E3%81%99%E3%80%82


sfdx force:auth:web:login -r https://login.salesforce.com -a VSCodePlaygrand -u curious_koala

sfdx config:set defaultusername=VSCodePlaygrand

sfdx force:org:list
or
sfdx force:org:display

sfdx force:source:retrieve -m "ApexClass"

sfdx force:source:retrieve -m "Profiles"
sfdx force:source:retrieve -m "CustomObject"

sfdx force:source:retrieve -p ./force-ap

sfdx force:source:deploy -m "ApexClass:CustomObject01Controller"

sfdx force:apex:execute --apexcodefile ./scripts/apex/CustomObject01.apex

sfdx force:source:deploy -m "ApexTrigger:CustomObject01TriggerSharing"

Account myAccount = new Account(Name = 'MyAccount');
Insert myAccount;
For (Integer x = 0; x < 250; x++){
   Account newAccount = new Account (Name='MyAccount' + x);
   try {
        Insert newAccount;
   } catch (Exception ex) {
        System.debug (ex) ;
   }
   insert new Account (Name='myAccount');
}

sfdx force:source:retrieve -m "LightningComponentBundle"


sfdx force:source:deploy -m "LightningComponentBundle:bikeCard"

0055i0000060j6nAAA
infinith4@gmail.com.curious-koala-je7w7s-dev-ed.0001



# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
