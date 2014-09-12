public class accountsearch {

    public list<Account> searchResults { get; set; }
    public string searchText {get;set;}
        
        public PageReference search() 
        {
                
        if(searchText != null)
        {
            searchResults = new List<Account>(); // init the list if it is null
            String qry =  'Select Id, Name,Phone,BillingState,Website from Account WHERE Name LIKE \'' + searchText + '%\' Order By Name';
            searchResults = Database.query(qry);
        }
        else
        {
            searchResults= null;
            
        }
        return null;
        }
    }