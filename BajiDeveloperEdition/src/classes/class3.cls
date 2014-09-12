public class class3
{

public list<Account> getAccounts()
{

list<Account> Oacc = [SELECT ID , 
                             NAME,
                             AccountNumber,
                             Phone 
                        FROM Account 
                        LIMIT 10
                     ];

system.debug('*******');


return Oacc  ;
}

}