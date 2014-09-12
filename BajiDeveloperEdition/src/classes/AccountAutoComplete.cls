global class AccountAutoComplete{

    public Account account{get; set;}
    public AccountAutoComplete() {
       List<Account> account=[select Id,Name From Account Limit 2];
       system.debug('***************************'+account);
    } 

}