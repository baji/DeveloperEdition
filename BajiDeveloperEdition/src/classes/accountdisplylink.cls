public class accountdisplylink 
{
        public string err{get;set;}
        public String Searchtext{get;set;}    
        Public Integer noOfRecords{get; set;}
        public integer size { get; set; }
        public ApexPages.StandardSetController con{get; set;}
          
          public accountdisplylink()
          {
              //Searchtext = Apexpages.currentPage().getParameters().get('Searchtext');
              //system.debug('*************SearchText Value**************'+Searchtext);
              //search();
          }
          
          public List<Contact> searchResults
            {
                get
                {
                    if(con != null)
                        return (List<Contact>)con.getRecords();
                    else
                        return null ;
                }
                set;}
                
        public pagereference search()
            {       
                Searchtext = Apexpages.currentPage().getParameters().get('name');
                
                if(Searchtext != null &&  !Searchtext.trim().equals('') )
                {
              
                   err='';
                String baseQuery  =  'Select Id, Name,Phone from Contact WHERE Name LIKE \'' +Searchtext+ '%\' Order By Name';
                con = new ApexPages.StandardSetController(Database.getQueryLocator(baseQuery));
                 // searchResults = Database.query(baseQuery );
                  con.setPageSize(15);
                  if(searchResults != null && searchResults.isEmpty())
                   {
                    Err  = 'Records not found for your search';
                   }
                  
                }   
         else
               {
                   searchResults = Null;
                   Err = 'Please enter the String to search';
               }
         return null;
               }
           
           public void PREVIOUS() 
              {
             con.PREVIOUS();
             
              }


            public void NEXT() 
              {
                con.next();
              }
              public Boolean hasNext
            {
            get
            {
            return con.getHasNext();
            }
            set;
            }
            
            
            public Boolean hasPrevious
            {
            get
            {
            return con.getHasPrevious();
            }
            set;
            }

             public Integer pageNumber
              {
                get
                {
                    return con.getPageNumber();
                }
                set;
             } 
}