
trigger CustomObject01TriggerSharing on CustomObject01__c (after insert) {
    
    if(trigger.isInsert){
        // Create a new list of sharing objects for Job
        List<CustomObject01__Share> customObject01_Shrs  = new List<CustomObject01__Share>();
        
        // Declare variables for recruiting and hiring manager sharing
        CustomObject01__Share recruiterShr;
        CustomObject01__Share hmShr;
        
        for(CustomObject01__c customObject01 : trigger.new){
            // Instantiate the sharing objects
            recruiterShr = new CustomObject01__Share();
            //hmShr = new CustomObject01__Share();
            
            // Set the ID of record being shared
            recruiterShr.ParentId = customObject01.Id;
            //hmShr.ParentId = customObject01.Id;
            
            List<User> userIdList = [select Id FROM User where Username = 'infinith4@curious-koala-je7w7s.com' limit 1 ];
            // Set the ID of user or group being granted access
            System.debug('------' + userIdList[0].Id);
            recruiterShr.UserOrGroupId = '00G5i000006WnLuEAK'; //userIdList[0].Id;
            //hmShr.UserOrGroupId = customObject01.Hiring_Manager__c;
            
            // Set the access level
            recruiterShr.AccessLevel = 'Edit';
            //hmShr.AccessLevel = 'read';
            
            // Set the Apex sharing reason for hiring manager and recruiter
            recruiterShr.RowCause = 'Manual';
            //recruiterShr.RowCause = Schema.CustomObject01__Share.RowCause.Recruiter__c;
            //hmShr.RowCause = Schema.CustomObject01__Share.RowCause.Hiring_Manager__c;
            
            // Add objects to list for insert
            customObject01_Shrs.add(recruiterShr);
            //jobShrs.add(hmShr);
        }
        
        // Insert sharing records and capture save result 
        // The false parameter allows for partial processing if multiple records are passed 
        // into the operation 
        Database.SaveResult[] lsr = Database.insert(customObject01_Shrs,false);
        
        // Create counter
        Integer i=0;
        
        // Process the save results
        for(Database.SaveResult sr : lsr){
            if(!sr.isSuccess()){
                // Get the first save result error
                Database.Error err = sr.getErrors()[0];
                
                // Check if the error is related to a trivial access level
                // Access levels equal or more permissive than the object's default 
                // access level are not allowed. 
                // These sharing records are not required and thus an insert exception is 
                // acceptable. 
                if(!(err.getStatusCode() == StatusCode.FIELD_FILTER_VALIDATION_EXCEPTION  
                                               &&  err.getMessage().contains('AccessLevel'))){
                    // Throw an error when the error is not related to trivial access level.
                    trigger.newMap.get(customObject01_Shrs[i].ParentId).
                      addError(
                       '------Unable to grant sharing access due to following exception: '
                       + err.getMessage());
                }
            }
            i++;
        }   
    }
    
}