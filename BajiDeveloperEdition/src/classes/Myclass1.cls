public class Myclass1 
{
public list<Foundation_Countries__c> getmyMethod()
{
List<Foundation_Countries__c> Oacc = new List<Foundation_Countries__c>();
Oacc = [SELECT ID,Foundation_Countries__c.Name
FROM
Foundation_Countries__c
LIMIT 10];

return Oacc; 

}

}