public class accountTeamWrapperController {
    
    Public List<accountDisplayWrapper > accountWrapperList {get; set;}
    
    public accountTeamWrapperController(ApexPages.StandardController controller) {
        if(accountWrapperList == null){
            
            accountWrapperList = new List<accountDisplayWrapper >();
            
            
            for(Account a: [select Id, Name from Account where Id IN (select AccountId from accountTeamMember) Order By Name]) {
                // add the opportunity records and bollean flag to the wrapper class instances one by one
                for(accountTeamMember at: [select user.name,TeamMemberRole from accountTeamMember where AccountId =: a.Id]){
                    accountWrapperList.add(new accountDisplayWrapper(a,at.TeamMemberRole));
                }
                //accountWrapperList.add(new accountDisplayWrapper(a,a.AccountId));
            }
        }
    }
    
    /*This is the wrapper class*/
    public class accountDisplayWrapper {
        public Account AccRec{get; set;}
        //public AccountTeamMember Accteam{get; set;}
        public String accStr{get;set;}
        /*This is the constructor for wrapper class*/ 
        public accountDisplayWrapper (Account acc,String s) {
            AccRec = acc;
            accStr = s;
        }
    }
}