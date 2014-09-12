public class buttonController {

    Id id = ApexPages.currentPage().getParameters().get('id');
    Account acc;
    public buttonController(ApexPages.StandardController controller) {        

    }
    public PageReference sendEmail(){
        acc = [select Name from Account where Id =: id];
        system.debug('*********************************'+id+'--'+acc);
        
        PageReference pr = new PageReference('http://www.google.com');
        //pr.sendRedirect(true);
        return pr;
    }
    public void sendId(){
        
    }

}