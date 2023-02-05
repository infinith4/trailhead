trigger ExampleTrigger on Contact (after insert, after delete) {
    if (Trigger.isInsert) {
        System.debug('test');
        Integer recordCount = Trigger.new.size();
        // Call a utility method from another class
        EmailManager.sendMail('infinith4@gmail.com', 'Trailhead Trigger Tutorial', 
                    recordCount + ' contact(s) were inserted.');
    }
    else if (Trigger.isDelete) {
        // Process after delete
    }
}