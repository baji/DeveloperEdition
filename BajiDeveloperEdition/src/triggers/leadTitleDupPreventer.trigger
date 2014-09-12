trigger leadTitleDupPreventer on Lead (before insert,before update) {
    Map<String,Lead> leadMap = new Map<String,Lead>();
    for(Lead lead: System.Trigger.new)
    {
        if((lead.Title!= null)&& 
        (System.Trigger.isInsert || 
        (lead.Title != System.Trigger.oldMap.get(lead.Id).Title)))
        {
            if (leadMap.containsKey(lead.Title)) 
            {
                lead.Title.addError('Another new lead has the '
                                    + 'same email address.');
            } else {
                leadMap.put(lead.Title, lead);
            } 
        }
  }
for (Lead lead : [SELECT Title FROM Lead
                      WHERE Title IN :leadMap.KeySet()]) {
        Lead newLead = leadMap.get(lead.Title);
        newLead.Title.addError('A lead with this Title '
                               + 'already exists.');
    }
    }