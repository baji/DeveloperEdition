public class countrysearch {

    public list<Foundation_Countries__c> searchResults { get; set; }
    public string searchText {get;set;}
        
        public PageReference search() 
        {
        if (searchResults == null) 
        {
            searchResults = new List<Foundation_Countries__c>(); // init the list if it is null
        } 
        else {
            searchResults.clear(); 
        }
        String qry =  'Select id, Name,Country_Code__c from Foundation_Countries__c WHERE Name LIKE \'' + searchText + '%\' Order By Name';
        searchResults = Database.query(qry);
        return null;
        }
    }