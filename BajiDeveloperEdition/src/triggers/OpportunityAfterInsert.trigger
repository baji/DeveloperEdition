trigger OpportunityAfterInsert on Opportunity (before insert,before update) {
  OpportunityAfterInsertManager.handleOpportunityAfterInsert(Trigger.new);
  //OpportunityUtility.triggerCall(Trigger.new);
}