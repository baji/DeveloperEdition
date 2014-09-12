trigger LeadCustomFieldsMap on Lead (After Update) {

  if (Trigger.new.size() == 1) {
 
    if (Trigger.old[0].isConverted == false && Trigger.new[0].isConverted == true) {
 
      // if a new account was created
      if (Trigger.new[0].ConvertedAccountId != null) {
 
        // update the converted account with some text from the lead
        Account a = [Select a.Id, a.Description From Account a Where a.Id = :Trigger.new[0].ConvertedAccountId];
        a.Description = Trigger.new[0].Name;
        update a;
 
      }          
 }
}
}