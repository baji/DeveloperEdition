global class displayContacts  
    {              
          global class ContactsInfo
          {     
              webservice List<Contact> contact;
                   
          }   
          webservice static ContactsInfo getContact(ContactsInfo conInfo)
          {
              
               ContactsInfo conObj = new ContactsInfo();
               conObj.contact=[Select Id, IsDeleted, MasterRecordId, AccountId, 
                               LastName, FirstName, Salutation, Name, OtherStreet,
                               OtherCity, OtherState, OtherPostalCode, OtherCountry,
                               MailingStreet, MailingCity, MailingState, 
                               MailingPostalCode, MailingCountry, Phone, Fax, 
                               MobilePhone, HomePhone, OtherPhone,  
                               Email, Title,LeadSource, Birthdate, Description, OwnerId, 
                               CreatedDate, CreatedById, LastModifiedDate, 
                               LastModifiedById, LastActivityDate,Loyalty_Number__c    
                                 FROM Contact
                     WHERE LastModifiedDate = YESTERDAY and Loyalty_Number__c != null];
               
              return conObj;
          }
          static testmethod void TestMethodChck()
            {
            displayContacts dis=new displayContacts();
            ContactsInfo c=new ContactsInfo();
            displayContacts.getContact(c);
            }     
       }