public class AccountProcessor {
    @future(callout=true)
    public static void countContacts(List<Id> AccountIDs) {
        List<Account> accounts = [SELECT Id,(SELECT Id FROM Contacts) FROM Account WHERE Id IN: accountIds];
        for (Account a : accounts) {
            a.Number_of_Contacts__c = a.Contacts.size();
        }
        if (!accounts.isEmpty()) {
            update accounts;
        }
    }
}