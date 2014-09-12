trigger LeadAutomaticConvert on Lead (After insert) {

String name = [select Id,Name from RecordType where SobjectType = 'Lead' and Name like '%Community_Aggrement%'].Name; 

if(name != null){
    for (Lead lead : Trigger.new) 
    {
        if (lead.isConverted == false && name.equals('Community Aggrement')) 
        {

            Database.LeadConvert lc = new Database.LeadConvert();
            lc.setLeadId(lead.Id);
            lc.setDoNotCreateOpportunity(true);

            LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
            lc.setConvertedStatus(convertStatus.MasterLabel);

            Database.LeadConvertResult lcr = Database.convertLead(lc);
            System.assert(lcr.isSuccess());

        } 
     }   

}

}