public class Parent_Child {

   
    
    public Parent_Child(){
        
        con = new Contact();    
    }
    
    public PageReference loading_values() {
      if(con!=null){
         Account a=[select id,name,ParentID, billingstreet, billingCity from account where ID=:con.accountid];
         con.mailingstreet=a.billingstreet;
        }
        return null;
    }

    public contact con { get; set; }
    
     public Foundation_Countries__c getCountryCode() {
         
         return([select Country_Code__c from Foundation_Countries__c where Name = 'India']);
     }
    
}