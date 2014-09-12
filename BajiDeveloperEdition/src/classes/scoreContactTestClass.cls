@isTest
public class scoreContactTestClass
{
    
    static testMethod void testcontact()
    {
    
        Test.startTest();
         
        Account acc = new Account();
            acc.Name = 'bajiTest';
            
        insert acc;
        
        Contact con = new Contact();
            con.LastName = 'test last name';
            con.score_card_c__c = 20;
            con.AccountId = acc.Id;
            
        insert con;
        
        Test.stopTest();
        
    }
}