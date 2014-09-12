public  class OpportunityUtility {
 
  public static void triggerCall(List<Opportunity> opp){
    
    List<Opportunity> opp_up = new List<Opportunity>();
   
    for(Opportunity op : opp){
    
           op.OrderNumber__c = 'cusorder';
           opp_up.add(op);
    }
}
}