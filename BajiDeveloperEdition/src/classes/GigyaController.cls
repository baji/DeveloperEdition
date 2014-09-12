public class GigyaController {

    public PageReference accessToken() {
        
        return null;
    }

   public String token {get; set;}
   
   
   public String newPassword { get; set; }
   
   
   Public GigyaController(){      
       system.debug('*****************************'+token);
       //getResult1();
       
   }
   
    public String username;
    public String password;
    public String pwd { get; set; }
    

    public String uname { get; set; }
    public String G_UID = '';
    public String LoginID {get; set;}
    public String pwrt ;
    
    
    
    public PageReference test() {
                
        system.debug('*****************************'+LoginID);   
    
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        //req.setEndpoint('http://maps.googleapis.com/maps/api/geocode/json?address='+address+'&sensor=false');
        //req.setEndpoint('https://accounts.gigya.com/accounts.login?ApiKey=3_uWv8tPncBvR7SK-no_tVUWH767biRQvCC_aXzZuk8kSWeFHwJBHh3UiJA_5OKXch&secret=8h/3GPJbZ4ZhSylorpfeBLDSZoqUXhfq4gYy4u/qwJA=&loginID='+uname+'&password='+pwd);
        req.setEndpoint('https://accounts.gigya.com/accounts.resetPassword?ApiKey=3_uWv8tPncBvR7SK-no_tVUWH767biRQvCC_aXzZuk8kSWeFHwJBHh3UiJA_5OKXch&secret=8h/3GPJbZ4ZhSylorpfeBLDSZoqUXhfq4gYy4u/qwJA=&loginID='+LoginID);       
 
        req.setMethod('GET');
        req.setTimeout(60000);
      
        try
        {
            // callout
            HttpResponse res = h.send(req);
            system.debug('------------------------'+res.getBody());
            
            /*
            JSONParser parser = JSON.createParser(res.getBody());
            
            while (parser.nextToken() != null) {
                if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) &&(parser.getText() == 'UID')){
                       parser.nextToken(); // object start
                       
                       G_UID = parser.getText();
                    
                }
            }
            system.debug('---------------**********-------------------------------'+G_UID);
            */
            
           
        } catch (Exception e) 
        {
            system.debug('**************************'+e);
        }
        //return null;
            if(G_UID != '')
            {
                PageReference newPage = new PageReference('https://www.google.com');
                newPage.setRedirect(true);
                return newPage;
            }
            else
            {
                return null;
            }
    }
    
    public PageReference testResetPassword() {
    
        string errorcode;
                
       system.debug('*****************************'+newPassword);
       system.debug('*****************************'+token);
        
        string local = 'PR1_stBTWp-DpduOu8eNw_6IBQ-Ad7g-SojaZKTBPalI6ZJrefp5oZf7GAgy3UEKDjm8YwMgl3rSMPl0tjW5UITWYpdIg';
        
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://accounts.gigya.com/accounts.resetPassword?apiKey=3_uWv8tPncBvR7SK-no_tVUWH767biRQvCC_aXzZuk8kSWeFHwJBHh3UiJA_5OKXch&passwordResetToken='+token+'&newPassword='+newPassword);       
 
        req.setMethod('GET');
        req.setTimeout(60000);
        try
        {
            // callout
            HttpResponse res = h.send(req);
            system.debug('------------------------'+res.getBody());
            JSONParser parser = JSON.createParser(res.getBody());
            while (parser.nextToken() != null) {
                if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) &&(parser.getText() == 'errorCode')){
                       parser.nextToken(); // object start
                       
                    PageReference redirectp = new PageReference('http://www.google.com');
                    redirectp.setRedirect(true);
                    return redirectp;
                    
                }
            }
            
            
            
         } catch (Exception e) 
        {
            system.debug('**************************'+e);
        }   
        
     
         return null;
     
        
    }    
    public String getResult(){
    
        username = 'baji';
        return username;
    
    }
    public PageReference getResult1(){
        PageReference redirectp = new PageReference('http://www.google.com');
        redirectp.setRedirect(true);
        return redirectp;
    }
    
}