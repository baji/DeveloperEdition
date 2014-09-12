public with sharing class AllCasesCon {

    public PageReference populateData() {
       lstCon=[select id,firstname,lastname from contact limit 10000];
        return null;
    }

    public list<contact> lstCon{get;set;}
    public String AllCasess { get; set; }
    public user cuser{get;set;}
    public AllCasesCon(){
       lstCon=new list<Contact>();
    }
}