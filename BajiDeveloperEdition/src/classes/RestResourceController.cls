@RestResource(urlMapping='/showAccounts/*')
global class RestResourceController{
    @HttpGet
        global static List<Account> getAccounts(){
            List<Account> lst;
            try{
                String Name = RestContext.request.params.get('Name');
                system.debug('**************************'+Name);
                                  
                lst = [select Name from Account where name=: Name LIMIT 10];
//                lst = [select Name from Account LIMIT 10];
                return lst;
            }
            catch(Exception e){
                system.debug('Error: '+e.getMessage());
            }
            return lst;
        }
     @HttpPost 
      global static Account createNewCase(String accountName) {
         System.debug('COMPANY: '+accountName);
         //System.debug('Phone No: '+phone);
         //String Done = 'Done';
          Account acc =  new Account();
          acc.name = accountName;
          //acc.Phone = phone;
          insert acc;
          return acc;
       }

}