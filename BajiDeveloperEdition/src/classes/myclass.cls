global class myclass{
    @RemoteAction
    public static WrapperClass getInfo() 
    {
        return new WrapperClass('Test Account 1', 'Test Contact 1');
    }
    public class WrapperClass
    {
        String strAccountName 
        {   get;set;    }
        String strContactName 
        {   get;set;    }
        public WrapperClass(String strAName, String strCName)
        {
            strAccountName = strAName;
            strContactName = strCName;
        }
    }
}