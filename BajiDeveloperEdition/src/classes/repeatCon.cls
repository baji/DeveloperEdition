public class repeatCon 
{ 
    public List<Foundation_Countries__c> getCountries()
    {
        List<Foundation_Countries__c> optionlist1 = new List<Foundation_Countries__c>();
        
        list<Foundation_Countries__c> Ocountries = new list<Foundation_Countries__c>();
        Ocountries = [select id,Name from Foundation_Countries__c];
        
       for(Foundation_Countries__c Ocounty : Ocountries)
        {
            optionlist1.add(Ocounty);
        }
        return optionlist1;    
    }
       
    public String[] getStrings() 
    {
    return new String[]{'ONE','TWO','THREE'};
    }
}