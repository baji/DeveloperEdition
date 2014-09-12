@isTest
public class taskTestClass
{

   static testMethod void testtasks()
   {
       Test.startTest();
 
            contact Oc = new contact();
                    Oc.LastName = 'test last name';
                    //Oc.Auto_Number_Test_2__c = '001';
            insert Oc;
           
            Task Ot = new Task();
                 ot.Ownerid = userinfo.getUserId();
                 Ot.subject = 'test subject';
                 Ot.Priority = 'Normal';
                 Ot.Status = 'Not Started';
                 Ot.Whoid = Oc.id;  
            insert Ot;                         
       
       Test.stopTest();
   
   }

}