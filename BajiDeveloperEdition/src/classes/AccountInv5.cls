public class AccountInv5 {

    public AccountInv5(ApexPages.StandardSetController controller) {

    }

     public List<Account> getAct() {
        List<Account> acc = [SELECT Id,Name,Phone,Website,BillingState FROM Account Limit 10];
        
        return acc;
    }
}