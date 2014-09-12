public class wrapper_class_controller 
{
       List<aAccount> accountlist{get;set;}
       
       public List<aAccount> getAccounts() 
        {
            if(accountlist == null)
            {
                accountlist = new List<aAccount>();
            }
        return accountlist;
        }
   public class aAccount
    {
            public Account acc1 {get; set;}
            public Boolean selected {get; set;}
     
            
            public aAccount(Account a) 
            {
                acc1 = a;
                selected = false;
            }
    }

}