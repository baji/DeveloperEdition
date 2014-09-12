trigger sendingMail on Account (after Update) {
    if(SendEmailAccount_Trigger.isRecursive)
     {
             SendEmailAccount_Trigger cls  = new SendEmailAccount_Trigger(trigger.new);          
     }   
}