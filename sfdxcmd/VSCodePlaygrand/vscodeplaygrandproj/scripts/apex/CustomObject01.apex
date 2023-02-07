// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

System.debug('Hello World!');
List<CustomObject01__c> customObject01List = CustomObject01Controller.getAllRecords();
System.debug('size: ' + customObject01List.size());

Integer count = CustomObject01Controller.getAllRecordsCount();
System.debug('Count: ' + count);
Integer countShare = CustomObject01Controller.getAllShareRecordsCount();
System.debug('CountShare: ' + countShare);

//CustomObject01__Share のレコードを3にしたのに5になっているのはなぜ？
// 01:50:07.203 (207436403)|SOQL_EXECUTE_BEGIN|[4]|Aggregations:0|SELECT Id, Name, Num__c FROM CustomObject01__c
// 01:50:07.203 (222936276)|SOQL_EXECUTE_END|[4]|Rows:5

CustomObject01Controller.deleteReocrds();
CustomObject01Controller.insertRecords(5, 0);
