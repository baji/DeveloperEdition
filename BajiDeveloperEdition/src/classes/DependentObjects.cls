public class DependentObjects {

    public String State { get; set; }   
    public String Country { get; set; }    
    private List<Foundation_States__c> States_list = new List<Foundation_States__c>();
    
    public List<SelectOption> getCountries()
    {
        List<SelectOption> optionlist1 = new List<SelectOption>();
        
        list<Foundation_Countries__c> Ocountries = new list<Foundation_Countries__c>();
        Ocountries = [select id,Name from Foundation_Countries__c];
         system.debug('Foundation Countries in Dependent Objects Cls'+Ocountries);
       for(Foundation_Countries__c Ocounty : Ocountries)
        {
            optionlist1.add(new SelectOption(Ocounty.id,Ocounty.Name));
        }
        return optionlist1;    
    }
    // Constructor - Executes on Initilization of the class only.
    public DependentObjects()
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
    } 
    
    public List<Foundation_States__c> getStates()
     {
      system.debug('***CheckC Country Value------'+Country);
         List<Foundation_States__c> optionList = new List<Foundation_States__c>();
         //Foundation_Countries__c a0890000006rGR6
         //list<Foundation_States__c> Ostates = new list<Foundation_States__c>();
        // Ostates  = [SELECT id,Name,State_Code__c FROM Foundation_States__c];
        
        if(Country  != null || Country != '')
        {
            for(Foundation_States__c Ostate : States_list )
            {
                   //system.debug('*****Country ID******'+Ostate.Foundation_Countries__c);
                     if(Ostate.Foundation_Countries__c == Country )
                      { 
                          //system.debug('*****Country String******'+Country);                             
                            optionList.add(Ostate);                                                                     
                      }                      
             }// end for loop
         }
                   
             return optionList;
      } 
      
      public PageReference main() 
    {
            
            
            PageReference pageRef = new PageReference('/');    
            pageRef.setRedirect(true);
            return pageRef;
    }

}