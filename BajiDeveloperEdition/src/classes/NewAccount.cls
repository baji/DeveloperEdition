public class NewAccount {


public List<ContactWrapper> wrappers {get; set;}
 public static Integer toDelIdent {get; set;}
 public static Integer addCount {get; set;}
 private Integer nextIdent=0;
 
    Account account;
    public Account getAccount() {
    if(account == null) account = new Account();
    return account;
    }
    public NewAccount(ApexPages.StandardController controller) {
        wrappers=new List<ContactWrapper>();
          for (Integer idx=0; idx<1; idx++)
          {
           wrappers.add(new ContactWrapper(nextIdent++));
          }
    }
  
 public void addRows()
 {
  for (Integer idx=0; idx<addCount; idx++)
  {
   wrappers.add(new ContactWrapper(nextIdent++));
  }
 }
 public void delWrapper()
 {
  Integer toDelPos=-1;
  for (Integer idx=0; idx<wrappers.size(); idx++)
  {
   if (wrappers[idx].ident==toDelIdent)
   {
    toDelPos=idx;
   }
  }
   
  if (-1!=toDelPos)
  {
   wrappers.remove(toDelPos);
  }
 }

 public PageReference save()
 {
  insert account;
  List<Contact> accs=new List<Contact>();
  for (ContactWrapper wrap : wrappers)
  {
   accs.add(wrap.con);     
  }
  
  insert accs;
  
  for(Contact c:accs){
      c.accountId = account.Id;
      update c;
  }
  
  account = null; 
  return new PageReference('/' + Schema.getGlobalDescribe().get('Contact').getDescribe().getKeyPrefix() + '/o');
 }
 
 
public class ContactWrapper
 {  
  public Integer ident {get; set;}
  //public Contact con{get; set;}
  Contact con;
    public Contact getCon() {
    if(con == null) con = new Contact();
    return con;
    }
  public ContactWrapper(Integer inIdent)
  {
   ident=inIdent;
   //con = new Contact();
   
  }
 }
 
 }