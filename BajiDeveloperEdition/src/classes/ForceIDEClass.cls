public with sharing class ForceIDEClass {
    public ForceIDEClass(){
        system.debug('******************************');
    }
    public List<Account> getAccounts(){
        List<Account> aList = [select Id,Name,Phone From Account Limit 10];
        return aList;
    }
}