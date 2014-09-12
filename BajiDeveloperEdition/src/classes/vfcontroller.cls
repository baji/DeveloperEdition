public class vfcontroller {
    //public PageReference nextPage;
    public List<Foundation_States__c> slist = new List<Foundation_States__c>();
    public String sname;
    public PageReference invokeService() {
        Id cid = Apexpages.currentPage().getParameters().get('id');
        //system.debug('*********************'+cid);
      sname = [SELECT Name,Foundation_Countries__c 
                 FROM Foundation_States__c 
                 WHERE Foundation_Countries__c =: cid
                 Limit 1].Name;
      //system.debug('&&&&&&&&&&&&&&&&&&&&&&&&'+slist);
      //returning null indicates the same page should be returned - in place change
     /*PageReference nextPage = new PageReference('/apex/newstates');
                  nextPage.setRedirect(false);
                  system.debug('***nextPage****'+nextPage);
                  return nextPage;*/
      return null;       
    }
    String result='Click on an account to fetch the data';
    
   public String getFetchedData() {   
       return sname;
   }
    public List<Foundation_Countries__c> getMyContacts() {
       return [SELECT Id, Name FROM Foundation_Countries__c LIMIT 5];
   }

}