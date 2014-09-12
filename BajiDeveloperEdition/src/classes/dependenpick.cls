public class dependenpick {

    public String State { get; set; }

    public String Country { get; set; }
    
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
    public List<Foundation_States__c> getStates()
     {
         List<Foundation_States__c> optionList = new List<Foundation_States__c>();
         
         list<Foundation_States__c> Ostates = new list<Foundation_States__c>();
         Ostates  = [SELECT id,Name,State_Code__c FROM Foundation_States__c];
         if(Country == 'India')
          {        
                  
                    optionList = [SELECT id,Name,State_Code__c FROM Foundation_States__c where Name='AndhraPradesh'];                                                                     
          } 
          /*else if(Country == 'SouthAfrica')
          {
              
          } 
          else
          {
              optionList.add(new SelectOption('None','None'));
              for(Foundation_States__c Ostate : Ostates)
                {
                    optionList.add(new SelectOption(Ostate.id,Ostate.Name));
                }
          } */
             return optionList;
      } 

}