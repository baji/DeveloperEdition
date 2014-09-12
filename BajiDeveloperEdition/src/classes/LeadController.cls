public class LeadController {
    
    Lead lead;
    //Account account;
    public LeadController(){
        
    }
    public Lead getLead(){
        if(lead == null){
            lead = new Lead();
        }
        return lead;
    }
    /*public Account getAccount(){
        if(account == null){
            account = new Account();
        }
        return account;
    }*/
     
    public PageReference cancel() {
        PageReference leadPage = new ApexPages.StandardController(Lead).view();
        leadPage.setRedirect(true);
        //PageReference accPage = new ApexPages.StandardController(Account).view();
        //accPage.setRedirect(true);
        //return accPage;
        return leadPage;
    }
     public PageReference save() {
        
       insert lead;
       //insert account; 
        PageReference leadDetailPage = new ApexPages.StandardController(Lead).view();
        leadDetailPage.setRedirect(true);
        return leadDetailPage;
        //PageReference accDetailPage = new ApexPages.StandardController(Lead).view();
        //accDetailPage.setRedirect(true);
        //return accDetailPage;
     }   
}