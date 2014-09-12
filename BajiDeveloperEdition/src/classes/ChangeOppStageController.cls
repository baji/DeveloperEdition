public with sharing class ChangeOppStageController {
    public List<Opportunity> oppList {get; set;}
    public String oppId {get; set;}
 
    public ChangeOppStageController() {}
 
    /**
    *   @description Initial Method
    *
    */
 
    public void init() {
        oppList = [
                SELECT Name, StageName
                FROM Opportunity
                LIMIT 20];
    }
 
    /**
    *   @description Change Opportunity Stage Method
    *
    */
 
    public void changeStage() {
        //Get opportunity
        Opportunity v_currentOpp = [
                SELECT StageName
                FROM Opportunity
                WHERE Id = :oppId];
 
        //Change stage
        v_currentOpp.StageName = 'Closed Paid';
 
        //Update opportunity
        update v_currentOpp;
 
        //Call init method
        init();
    }
}