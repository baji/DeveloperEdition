public class customlink_contry 
{

    public String getFetchData() {
        return null;
    }

    String result='Click on an account to fetch the data';
    
   public String getFetchedData() {
   return result;
   }
    
    public PageReference invokeService() {
        Id id = System.currentPageReference().getParameters().get('id');
        result = [SELECT Name FROM Foundation_States__c WHERE Id=:id].Name;
        return null;
    }
   
    public String State { get; set; }   
    public String Country { get; set; }    
    private List<Foundation_States__c> States_list = new List<Foundation_States__c>();
    private List<Foundation_States__c> States_list1 = new List<Foundation_States__c>();
    
      //Id linkAttr = ApexPages.currentPage().getParameters().get('id');
        
    // Constructor - Executes on Initilization of the class only.
    public customlink_contry()
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
       Country = Apexpages.currentPage().getParameters().get('Country');
       //getStates();
    } 
    public List<Foundation_Countries__c> getCountries()
    {
        List<SelectOption> optionlist1 = new List<SelectOption>();
        List<Foundation_Countries__c> fcon = new List<Foundation_Countries__c>();
        
        list<Foundation_Countries__c> Ocountries = new list<Foundation_Countries__c>();
        Ocountries = [select id,Name from Foundation_Countries__c];
        
        for(Foundation_Countries__c Ocounty : Ocountries)
        {
            //optionlist1.add(new SelectOption(Ocounty.id,Ocounty.Name));
            fcon.add(Ocounty);
            
        }
        return fcon;    
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
           
}