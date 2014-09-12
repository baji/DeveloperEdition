public  class OpportunityAfterInsertManager {
  public class OpportunityAfterInsertException extends Exception{} 
  public static void handleOpportunityAfterInsert(List<Opportunity> newOpps){
    
    List<Opportunity> updateOpps = new List<Opportunity>();
    Map<Id,Id> OppsWithAcctsIdsMap = new Map<Id,Id>();
    //Build a list of contacts from the opportunities
    for(Opportunity o : newOpps){
        OppsWithAcctsIdsMap.put(o.AccountId,o.Id);      
    }
    system.debug('******** AccountIds Map ************'+OppsWithAcctsIdsMap.KeySet());
    
    List<Contact> contacts = [SELECT Id,AccountId FROM Contact Where AccountId IN:OppsWithAcctsIdsMap.KeySet()];
    system.debug('**********Contact Recrord values********************'+contacts);
    //Build a list of Campaign IDS for each Opportunity's billing contact
    Map<Id,Id> ContactIdsMap = new Map<Id,Id>();
    for(Contact c : contacts){
      ContactIdsMap.put(c.Id,c.AccountId);
    }  
    List<CampaignMember> camps = [Select Id,CampaignId,ContactId From CampaignMember WHERE ContactId IN: ContactIdsMap.KeySet()];
    system.debug('*********CampaignMember record values*************'+camps);
    // For each opp, go through the list of its billing contacts and any campaigns that it is realted to  and load that campaign into the opp.
    for(Opportunity os : newOpps){        
        for(Contact cs : contacts){
          for(CampaignMember cms : camps){
            if(cms.ContactId == cs.Id){
              if(cs.AccountId == os.AccountId){
                os.CampaignId = cms.CampaignId;
                updateOpps.add(os);
              }
            
            }
          }
      }//IF
    }//FOR
    try{
      system.debug('DID WE MAKIE IT HERE? '+updateOpps);
      //update updateOpps;
    }
    catch(OpportunityAfterInsertException oaie){
      system.debug(oaie);
    }
  }//handleOpportunityAfterInsert()


}//Class