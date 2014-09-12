@isTest
public class TestClass1
{


    private static testMethod  void Runme1()
    {
        List<Foundation_Countries__c> Found_list = new List<Foundation_Countries__c>();
              Foundation_Countries__c ofound1 = new Foundation_Countries__c(Name='India',Country_Code__c='IN');       
              Foundation_Countries__c ofound2 = new Foundation_Countries__c(Name='Pakistan',Country_Code__c='Pak');                     
              Foundation_Countries__c ofound3 = new Foundation_Countries__c(Name='Srilanka',Country_Code__c='SLK');                     
              Foundation_Countries__c ofound4 = new Foundation_Countries__c(Name='China',Country_Code__c='CHN');      
        Found_list.add(ofound1);              
        Found_list.add(ofound2);              
        Found_list.add(ofound3);              
        Found_list.add(ofound4);              
            insert Found_list;
            
            Foundation_States__c OfoundState = new Foundation_States__c(Name='AP',Foundation_Countries__c=Found_list[0].Id);
             insert OfoundState;
            // system.debug('Foundation Countries'+Found_list);
        DependentObjects Dep = new DependentObjects ();
                    Dep.getCountries();
                    Dep.Country = Found_list[3].Id; 
                    Dep.getStates();
                    Dep.main();
               
                    
    } 
 
}