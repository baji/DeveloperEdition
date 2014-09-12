trigger Trg_Foundation_States on Foundation_States__c (before update) 
{
if(Trigger.isBefore)
{
    if(Trigger.IsUpdate)
    {
        List<Foundation_States__c> Foundations_old = Trigger.old;
        List<Foundation_States__c> Foundations_new = Trigger.new;
        
        CallTrigger Class_CallTrigger = new CallTrigger(Trigger.old);
        
        
        
        
        List<Foundation_Countries__c> Ocountries = new List<Foundation_Countries__c>();
        List<Foundation_Countries__c> Update_Ocountries = new List<Foundation_Countries__c>();
        
        for(Foundation_States__c OState1 : Foundations_old )
        {
         system.debug('Old State Code'+OState1.State_Code__c);                                       
                                               
        } 
        for(Foundation_States__c OState2 : Foundations_new )
        {         
         system.debug('New State Code'+OState2.State_Code__c);                                                
        }                       
    }
}
else
{
    if(Trigger.IsInsert)
    {
        List<Foundation_States__c> Foundations = Trigger.New;
        List<Foundation_Countries__c> Ocountries = new List<Foundation_Countries__c>();
        List<Foundation_Countries__c> Update_Ocountries = new List<Foundation_Countries__c>();
        
        for(Foundation_States__c OState : Foundations )
        {
         system.debug('After Insert'+OState.id)  ;                                       
        }
    
    
    }
}


}