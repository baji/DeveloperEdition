trigger task_feild_update on Task (before insert,before update)
{              
       List<Task> Task = Trigger.new;
       List<Task> Task_update = new List<Task>();
       List<ID> task_whoid = new list<ID>();
           for(task Otask : task)
           {
             task_whoid.add(Otask.whoID);
           }
           List<Contact> con_list = new List<Contact>();    
            con_list = [SELECT id,
                               Name,
                               Languages__c
                        FROM 
                               Contact
                        WHERE 
                              id IN: task_whoid ];
          for(task taskfield :task)
          {
              for(Contact ContactLang : con_list)
                  {
                      if(taskfield.whoID == ContactLang.id )
                      {                         
                         taskfield.CustomFeild__c = ContactLang.Languages__c;   
                         Task_update.add(taskfield);                          
                      }
                  }             
          }                                                                        
}