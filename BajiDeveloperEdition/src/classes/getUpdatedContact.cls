global class getUpdatedContact{

WebService static List<Contact> getContactInfoModifiedToday()
{

    List<Contact> Upcon = new List<Contact>();
    
    Upcon = [SELECT Id,Name,LastModifiedDate 
               FROM Contact 
               WHERE LastModifiedDate = TODAY
               AND CreatedDate != TODAY];
               
    return Upcon;
}
}