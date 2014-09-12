public class dependent_checkbox_controller {

    public String Country { get; set; }
    public String State { get; set; }
    
    List<Foundation_Countries__c> contry_list = new List<Foundation_Countries__c>();
    List<Foundation_States__c> state_list = new List<Foundation_States__c>();
    
 public dependent_checkbox_controller()
 {
     contry_list = [select id,
                           Name,
                           Country_Code__c
                    from
                           Foundation_Countries__c 
                   ];
     state_list =  [select id,
                           Name,
                           Foundation_Countries__c
                    from
                           Foundation_States__c
                   ];
 } 
   
    public List<selectOption> getCountries() 
    {
        List<selectOption> optionList = new List<selectOption>();
        for(Foundation_Countries__c Ocountries: contry_list)
        {
              optionList.add(new selectOption(Ocountries.id,Ocountries.Name));
        }   
                            
        return optionList;
    }

    public List<selectOption> getStates() 
    {
        List<selectOption> optionList1 = new List<selectOption>();
        for(Foundation_States__c Ostates: state_list)
        {
              //optionList1.add(new selectOption(Ostates.id,Ostates.Name));
              if(Ostates.Foundation_Countries__c == Country)
              {
                  optionList1.add(new selectOption(Ostates.id,Ostates.Name));
              }
        } 
        return optionList1;
    }
    

    

}