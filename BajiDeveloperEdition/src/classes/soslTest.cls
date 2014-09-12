public class soslTest{

    
    public List<List<Sobject>> accList;
    public String searchText{set;get;}
    List<Account> accArchieved;
       
    public soslTest(){
    
        accArchieved = [select Id,Name From Account where Name =: ''];
    }  
    public List<Account> getAccounts() {
    List<Account> accArchieved1 = new List<Account>();
    //List<Contact> accArchieved2 = new List<Contact>();
        if(accList != null){
         for(Sobject acc : accList[0]){    
            Account a = (Account)acc;
            accArchieved1.add(a);
        }
        
      }
            return accArchieved1;
    }
    public List<Contact> getContacts() {
    //List<Account> accArchieved1 = new List<Account>();
    List<Contact> accArchieved2 = new List<Contact>();
        if(accList != null){
         for(Sobject acc : accList[1]){    
            Contact a = (Contact)acc;
            accArchieved2.add(a);
        }
        
      }
            return accArchieved2;
    }
public void Search() 
    {
        if(searchText != null)
        { 
            string str ='find \''+SearchText + '\' in all fields returning account(id,name),contact(name)';
            accList = search.query(str);
        }
        
    }


}