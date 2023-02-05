public with sharing class CustomObject01Controller {
  //全レコード取得
  public static List<CustomObject01__c> getAllRecords() {
    return [SELECT Id,Name,Num__c FROM CustomObject01__c];
  }

  //データインサート
  public static void insertRecords(Integer insertNum, Integer typeNum) {
    List<CustomObject01__c> newCustomObject01List = new List<CustomObject01__c>();
    for (Integer i = 0; i < insertNum; i++){
      CustomObject01__c newCustomObject01 = new CustomObject01__c(Num__c = typeNum, Name = 'Name' + String.valueOf(i).leftPad(7, '0'));
      try {
        newCustomObject01List.add(newCustomObject01);
      } catch (Exception ex) {
            System.debug (ex) ;
      }
    }
    Insert newCustomObject01List;
  }

  public static void deleteReocrds(){
    CustomObject01__c[] deleteCustomObject01s = [SELECT Id, Name FROM CustomObject01__c]; 
    try {
        delete deleteCustomObject01s;
    } catch (DmlException e) {
        // Process exception here
    }
  }
}