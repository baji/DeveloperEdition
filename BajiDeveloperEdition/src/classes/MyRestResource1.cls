@RestResource(urlMapping='/Contact/*')

    global with sharing class MyRestResource1 {
    
    
    @HttpGet
            global static List<Contact> doMyUpdatedContacts() {
            RestRequest req = RestContext.request;
            RestResponse res = RestContext.response;
            
            List<Contact> con = new List<Contact>();
                           
                          con = [SELECT Id,Name,LastModifiedDate 
                               FROM Contact 
                               WHERE LastModifiedDate = TODAY
                               AND CreatedDate != TODAY];
                               
            system.debug('____________MyRestResource1 ______'+con);
            return con;
            }
    
    }