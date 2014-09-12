public class Myclass2 
{

public list<Company__c> getmyMethod()
{
List<Company__c> Oacc = new List<Company__c>();
Oacc = [SELECT ID,Company__c.CreatedBy.Name,
Company__c.CEO__c,
Company__c.Address__c
FROM
Company__c
LIMIT 10];

return Oacc; 

}
public list<Company__c> getmyMethod1()
{
List<Company__c> Oacc1 = new List<Company__c>();
Oacc1 = [SELECT ID,Company__c.CreatedBy.Name,
Company__c.CEO__c,
Company__c.Address__c
FROM
Company__c
LIMIT 10];

return Oacc1; 

}
}