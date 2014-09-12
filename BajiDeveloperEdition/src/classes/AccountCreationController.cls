public class AccountCreationController {
    
    //Lead lead;
    Account account;
    public AccountCreationController(){
        
    }
    /*public Lead getLead(){
        if(lead == null){
            lead = new Lead();
        }
        return lead;
    }*/
    public Account getAccount(){
        if(account == null){
            account = new Account();
        }
        return account;
    }
     
    public PageReference cancel() {
        //PageReference leadPage = new ApexPages.StandardController(Lead).view();
        //leadPage.setRedirect(true);
        PageReference accPage = new ApexPages.StandardController(Account).view();
        accPage.setRedirect(true);
        return accPage;
        //return leadPage;
    }
     public PageReference save() {
        
       //insert lead;
       insert account;
        //PageReference leadDetailPage = new ApexPages.StandardController(Lead).view();
        //leadDetailPage.setRedirect(true);
        //return leadDetailPage;
        //PageReference accDetailPage = new ApexPages.StandardController(Account).view();
        PageReference accDetailPage = new Pagereference ('http://basha-developer-edition.ap1.force.com/JQuery_Testing');
        accDetailPage.setRedirect(true);
        return accDetailPage;
     }   
     @RemoteAction
     public Static Account getEmail(String Email){
         system.debug('**************'+Email);
         Account acc = [select Id,Name From Account where Email__c =: Email];
         return acc;
     }
}