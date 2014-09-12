public class dependent_picklist_controller 
{

    public PageReference SaveMe() {
        return null;
    }


    public String district { get; set; }
    public String State { get; set; }   
    public String Country { get; set; }    
    private List<Foundation_States__c> States_list = new List<Foundation_States__c>();
    private List<Foundation_States__c> States_list1 = new List<Foundation_States__c>();
    private List<District__c> Dist_list = new List<District__c>();
        
    public List<SelectOption> getCountries()
    {
        List<SelectOption> optionlist1 = new List<SelectOption>();
        
        list<Foundation_Countries__c> Ocountries = new list<Foundation_Countries__c>();
        Ocountries = [select id,Name from Foundation_Countries__c];
        
       for(Foundation_Countries__c Ocounty : Ocountries)
        {
            optionlist1.add(new SelectOption(Ocounty.id,Ocounty.Name));
        }
        return optionlist1;    
    }
    // Constructor - Executes on Initilization of the class only.
    public dependent_picklist_controller()
    {
       
    // states list contains all the States with out any filters.
       States_list = [SELECT  id,
                              Name,
                              State_Code__c,
                              Foundation_Countries__c 
                      FROM 
                              Foundation_States__c
                      WHERE     
                              Foundation_Countries__c != null    
                      ];
       Dist_list = [SELECT id,
                           Name,
                           Foundation_States__c
                    FROM
                           District__c
                    WHERE
                            Foundation_States__c != null
                    ]; 
    } 
    
    public List<selectOption> getStates()
     {
      //system.debug('***CheckC Country Value------'+Country);
         List<selectOption> optionList = new List<selectOption>();
         
        if(Country  != null || Country != '')
        {
            for(Foundation_States__c Ostate : States_list )
            {
                   //system.debug('*****Country ID******'+Ostate.Foundation_Countries__c);
                     
                             if(Ostate.Foundation_Countries__c == Country )
                          { 
                          //system.debug('*****Country String******'+Country);                             
                            optionList.add(new selectOption(Ostate.id,Ostate.name));                                                                     
                          }
                                             
             }// end for loop
         }
                  
             return optionList;
      }
      
      public List<selectOption> getDistricts() 
      {
         //system.debug('***Check State Value------'+State); 
          List<selectOption> distList = new List<selectOption>();
        if(State  != null || State != '')
        {
            //system.debug('***CheckState State Value is not null------'+State);
        for(District__c Odist : Dist_list )
        {
               //system.debug('-----------District ID------------'+Odist.Foundation_States__c);
                 if(Odist.Foundation_States__c == State )
                  { 
                      //system.debug('*****Country String******'+Country);                             
                        distList.add(new selectOption(Odist.id,Odist.name));                                                                     
                  }                      
         }// end for loop
        }
          return distList;
      }     
}