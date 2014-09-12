public class Scontrol {

    public String States { get; set; }
    public String Id { get; set; }
    private List<Foundation_States__c> States_list = new List<Foundation_States__c>();
    
    public Scontrol(){
    
    States_list = [SELECT  id,
                              Name,
                              State_Code__c,
                              Foundation_Countries__c 
                      FROM 
                              Foundation_States__c
                      WHERE     
                              Foundation_Countries__c != null   
                      ];
    }
    public List<selectOption> getStates()
     {
      //system.debug('***CheckC Id Value------'+Id);
         List<selectOption> optionList = new List<selectOption>();
         
        if(Id  != null || Id != '')
        {
            for(Foundation_States__c Ostate : States_list )
            {
                   //system.debug('*****Country ID******'+Ostate.Foundation_Countries__c);
                     
                             if(Ostate.Foundation_Countries__c == Id )
                          { 
                          //system.debug('*****Country String******'+Country);                             
                            optionList.add(new selectOption(Ostate.id,Ostate.name));                                                                     
                          }
                                             
             }// end for loop
         }
                  
             return optionList;
      }

}