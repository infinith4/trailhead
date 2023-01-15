@isTest
private class AccountProcessorTest {

    private static User testAdminUser = new User(Id = UserInfo.getUserId());

    static testMethod void countContactsTest() {
        
        System.runAs(testAdminUser) {
            
            Account account = new Account(Name = 'Sample');
            insert account;
            
            Contact contact = new Contact(LastName = 'Yoshikawa', AccountId = account.Id);
            insert contact;
            
            List<Id> accountIds = new List<Id>();
            accountIds.add(account.Id);

            Test.startTest();
            
            AccountProcessor.countContacts(accountIds);
            
            Test.stopTest();
            
            Account resultAccount = [SELECT Number_of_Contacts__c FROM Account WHERE Id =: account.Id LIMIT 1];
            System.assertEquals(resultAccount.Number_of_Contacts__c, 1);
        }
    }
}