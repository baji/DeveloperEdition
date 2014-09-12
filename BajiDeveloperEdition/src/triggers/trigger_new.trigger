trigger trigger_new on Contact (after insert, after update)
{
    Map<Id,Double> mapToupdate= new Map<Id, Double>();
    for(Contact objC : trigger.new)
    {
        if(objC.AccountId != null)
        {
            Contact objMaster = [Select Id, score_card_c__c, AccountId 
                                from Contact 
                                where AccountId = :  objC.AccountId order by score_card_c__c DESC limit 1];
            mapToupdate.put(objC.AccountId, objMaster.score_card_c__c);
        }
    }
    List<Account> lstAct = new List<Account>();
    for(Id AcctId : mapToupdate.keyset())
    {
        Account objC= new Account(Id = AcctId , Master_Score_c__c =  mapToupdate.get(AcctId) );
        lstAct.add(objC);
    }
    
    if(lstAct.size() > 0)
    update lstAct;
}