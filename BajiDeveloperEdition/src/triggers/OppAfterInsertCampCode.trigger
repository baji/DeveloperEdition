trigger OppAfterInsertCampCode on Opportunity (before insert) {
     Map<Id,Id> OppsActsIds = new Map<Id,Id>();
     for(Opportunity op : Trigger.new){     
            OppsActsIds.put(op.AccountId,op.Id); 
     system.debug('******** AccountIds Map ************'+OppsActsIds.KeySet());
     
         List<Contact> contacts = [SELECT Id,AccountId FROM Contact Where AccountId IN: OppsActsIds.KeySet()];
     system.debug('**********Contact Recrord values********************'+contacts);
          Map<Id,Id> ContactIdsMap = new Map<Id,Id>();
    for(Contact c : contacts){
      ContactIdsMap.put(c.Id,c.AccountId);
        }  
      List<CampaignMember> camps = [Select Id,CampaignId,ContactId From CampaignMember WHERE ContactId IN: ContactIdsMap.KeySet()];
    system.debug('*********CampaignMember record values*************'+camps);
     for(CampaignMember cmp: camps){ 
      Campaign campaign = [Select CampCode__c From Campaign where Id =: cmp.CampaignId];
      system.debug('*********Campaign record values*************'+campaign.CampCode__c);
      }
    for(Opportunity os : Trigger.new){        
        for(Contact cs : contacts){
          for(CampaignMember cms : camps){
            if(cms.ContactId == cs.Id){            
              if(cs.AccountId == os.AccountId && op.CampCode__c == null){
              Campaign campaign = [Select CampCode__c From Campaign where Id =: cms.CampaignId];
      system.debug('*********Campaign record values*************'+campaign.CampCode__c);
                //string newId = campaign.CampCode__c;                                    
                //os.CampaignId = newId;//campaign.CampCode__c;
                //updateOpps.add(os);
                os.CampCode__c = campaign.CampCode__c;
              }           
            }
          }
      }
      }      
    }  
}