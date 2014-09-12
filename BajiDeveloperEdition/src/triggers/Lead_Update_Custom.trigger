trigger Lead_Update_Custom on Account (before insert) {

    system.debug('**************Trigger Fired********************');
    list<Contact> Con = [select id,LastName,Phone from Contact ];
    
    for(Account a: Trigger.new)
    {
        system.debug('******************'+a.Description);
        if(a.Master_Score_c__c== null)
        {
            a.Master_Score_c__c= 50;
            
        }
        if(a.SLA__c == null || a.SLA__c == '')
        {
            a.SLA__c = 'Gold';
        }
        system.debug('********before Insert modified**********'+a.Master_Score_c__c);
        
   /*     for(Contact h :Con)
        {


					if( a.Phone == h.Phone )
					{
					a.Last_Name__c = h.LastName;

					system.debug('@@@@@@@'+h.Phone);
                                        }
					else
					{
					system.debug('naveen');
					}

       }
*/
    }
}