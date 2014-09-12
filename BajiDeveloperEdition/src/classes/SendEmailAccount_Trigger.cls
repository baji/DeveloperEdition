public class SendEmailAccount_Trigger
{ 
    public static boolean isRecursive = true; 
    public String[] toAddresses = new String[] {'bajidssk@gmail.com','king.baji@gmail.com','sk.bajibasha@gmail.com','bajibasha.sk@gmail.com'};
    public List<ID> Accids = new List<ID>();     
// Constructor    
    public  SendEmailAccount_Trigger(List<Account> TriggerNew)    
    {
        List<Messaging.SingleEmailMessage> senMail = new List<Messaging.SingleEmailMessage>();

        system.debug('******Accounts****'+Triggernew);
        List<Account> accounts = TriggerNew;
        String value_html  = '';
       
        for(Account a:accounts)
        {
          Accids.add(a.id);      
        }

        List<Contact> contacts = new List<Contact>([SELECT ID,Lastname,Firstname
                                                                      FROM   Contact
                                                                      WHERE  AccountId IN:accids]); 
                for(contact cql :contacts)
                {
                    value_html +=  'Name: '+cql.FirstName+' '+cql.LastName+'<br/>';
                }
        
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                    email.setSubject('Just now your quote final approval is done');                                 
                    email.setHtmlBody('<font face=""Times New Roman"" size=""4"" ><b>'
                                      +value_html+
                                      '</b></font>');                                       
            email.setToAddresses(toAddresses );
            senMail.add(email);
            system.debug('*** senMail ****'+ senMail);   
        List<Messaging.Email> allMails = new List<Messaging.Email>();
        for( Integer j = 0; j < senMail.size(); j++ )
        {
          allMails.add(senMail.get(j));
        }
        Messaging.SendEmailResult[] results = Messaging.sendEmail( allMails );
        system.debug('********Results**'+results); 
         isRecursive = false;         
    } 
     
    
}