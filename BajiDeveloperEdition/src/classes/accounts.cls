@RestResource(urlMapping='/accs/*')
global with sharing class accounts {

    @HttpGet
  global static List<Account> doGet() {
  
      List<Account> laccs = [select Id,Name From Account limit 10];
      return laccs; 
  } 

   @HttpPost
   global static String createAccount(){
    
       Account acc =  new Account();
       acc.Name = 'Name3Rest';
       insert acc;
       return 'Done';    
   }

}