public class ExtensionPage {

public boolean isExport {get;set;}



    public ExtensionPage(ApexPages.StandardController controller) {
    
        if(Apexpages.currentPage().getParameters().get('Export') != null){
                isExport = true;
              }
              else{
                isExport = false;
              }
    }
    public List<Account> getRecords(){   

        List<Account> accs = [SELECT Name, (SELECT FirstName,LastName,Phone,Email FROM Contacts),(SELECT Name FROM Opportunities) FROM Account Order by Name Desc LIMIT 5];
        
        return accs;
    }
    
    public PageReference export(){
            isExport = true;
              return null;
            } 
}