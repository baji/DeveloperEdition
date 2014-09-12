global class getContactInfo{

WebService static Contact getContactInfoModifiedToday(Datetime todayDatetime) {
Contact c = [SELECT id,name 
             FROM Contact 
             WHERE LastModifiedDate = TODAY AND CreatedDate != TODAY];

return c;

}
}