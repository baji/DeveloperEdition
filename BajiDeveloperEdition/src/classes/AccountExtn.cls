public class AccountExtn {
    ApexPages.StandardSetController controller;
    public AccountExtn(ApexPages.StandardSetController controller) {
        
        this.controller = controller;
    }
    public PageReference save()
    {
    
        controller.save();
        return Page.accountsview;
    }

}