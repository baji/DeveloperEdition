public class ClassSet 
{
    public Company__C Company {get;set;}      
    public ClassSet() 
    {    
        Id id = ApexPages.currentPage().getParameters().get('id');
        if(id == null)        
           Company = new Company__C();
        else
            Company = [SELECT Company__C.Name, Company__C.Address__c, Company__C.CEO__c FROM Company__C WHERE id = :id];
        
    } 
    public pageReference save()
    {
    try
    {
         if(Company.id == null)
             insert Company;
         else    
            update company;
        PageReference pageRef = new PageReference('/'+Company.id);    
        pageRef.setRedirect(true);
        return pageRef;
    }
    Catch (exception e)
    {
        return null;
    }
   }
}