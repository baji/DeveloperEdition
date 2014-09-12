global class UpdatedContacts implements Database.Batchable<sObject>
{
    webservice String query;
    webservice String email;
global  Database.querylocator start(Database.BatchableContext BC)
    {
            return Database.getQueryLocator(query);
    }
            
global void execute(Database.BatchableContext BC, List<sObject> scope)
    {
        
        List<Contact> con = new List<Contact>();
        con = [SELECT Id,Name,LastModifiedDate 
               FROM Contact 
               WHERE LastModifiedDate = TODAY
               AND CreatedDate != TODAY];
               
        
    }

global void finish(Database.BatchableContext BC)
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        mail.setToAddresses(new String[] {email});
        mail.setReplyTo('bajidssk@gmail.com');
        mail.setSenderDisplayName('Batch Processing');
        mail.setSubject('Batch Process Completed');
        mail.setPlainTextBody('Batch Process has completed');
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
            
}