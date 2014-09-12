public class searchAccount {

    public String Err { get; set; }   
    public String searchtext { get; set; }
    public List<Account> searchResults { get; set; }
    public String searchtextCID { get; set; }
    
    public PageReference searchResults() {
    
        if(searchText != null && !searchText.trim().equals(''))
        {
            searchResults = new List<Account>();
            Err = '';
            String qry =  'Select Id, Name,Phone,BillingState,Website from Account WHERE Name LIKE \'' + searchText + '%\' Order By Name';
            searchResults = Database.query(qry);            
        }
        else if(searchtextCID != null && !searchtextCID.trim().equals(''))
        {
            searchResults = new List<Account>();
            Err = '';
            String qry =  'Select Id, Name,Phone,BillingState,Website from Account WHERE Name LIKE \'' + searchtextCID + '%\' Order By Name';
            searchResults = Database.query(qry);
        } 
        else
        {
            Err = 'Please Enter a Search String';
        }
        
        if(searchResults != null && searchResults.isEmpty() && !searchText.trim().equals(''))
        {
             Err  = 'Records not found for your search';
        }
        return null;
    }
    
}