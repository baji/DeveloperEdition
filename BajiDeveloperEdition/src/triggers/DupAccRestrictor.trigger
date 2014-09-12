trigger DupAccRestrictor on Account (before insert, before update) {
 Map<String, Account> AccMap = new Map<String, Account>();
    for (Account acc : System.Trigger.new) {
        
         
    
        if ((acc.Phone != null) && (System.Trigger.isInsert || (acc.Phone != System.Trigger.oldMap.get(acc.Id).Phone))) {
        
             
    
            if (AccMap.containsKey(acc.Phone)) {
                acc.phone.addError('Another new account has the same phone number.');
            } else {
                AccMap.put(acc.Phone, acc);
            }
       }
    }
    
     
    
    for (Account acc : [SELECT phone FROM Account WHERE Phone IN :AccMap.KeySet()]) {
        Account newAcc = AccMap.get(acc.Phone);
        newAcc.phone.addError('Another new account has the same phone number.');
    }

}