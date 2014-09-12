public class AccountInv3 {

    public PageReference test() {
        return null;
    }
    List<Account> account = new List<Account>();
    public List<Account> getAccount() {
        return account;
    }

    public void setAccount(List<Account> account) {
        this.account = account;
    }

    List<Account> oacc;
    public AccountInv3(){
        oacc=[SELECT Id,Name,Phone
                FROM Account Limit 5];
    }
    public List<Account> getAccounts() {
        if(oacc!= null){}        
        return oacc;
    }

}