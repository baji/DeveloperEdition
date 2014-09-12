public class AccountExtension 
{
    public Account oaccount{get;set;}
    public AccountExtension(ApexPages.StandardController controller) 
    {
        oaccount  = (Account) controller.getRecord();
        try
        {
            oaccount = [select id,name,website,phone from Account where id=:oaccount.id];
        }
        catch(Exception e)
        {
        
        }
    }

}