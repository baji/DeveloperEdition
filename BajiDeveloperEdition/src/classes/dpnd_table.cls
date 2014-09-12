public class dpnd_table {

    

    public String statusmain { get; set; }
    
    
    public String getStatus1()
     {
         String os;
         if(statusmain == 'notstarted'){
         
             os = 'The ACTION is not yet Started';
             
         }
         else if(statusmain == 'started')
         {
             os = 'The ACTION is now Started';
         }
         else if(statusmain == 'underproces')
         {
             os = 'The ACTION is UnderProces';
         }
         else if(statusmain == 'completed')
         {
             os = 'The ACTION is Completed';
         }
         else
         {
             os = 'Please select an   ACTION';
         }
             return os;
      } 

}