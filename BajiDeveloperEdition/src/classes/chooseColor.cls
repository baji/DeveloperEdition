public class chooseColor 
{

public String string1 { get; set; }
public String Country { get; set; }
public String State { get; set; }

public List<SelectOption> getStates() {
  List<SelectOption> optionList = new List<SelectOption>();
        
  if(Country == 'India')
  {
    optionList.add(new SelectOption('AP','AndhraPradesh'));
    optionList.add(new SelectOption('KN','Karnataka'));  
  }   
  else if(Country == 'america')
  {
    optionList.add(new SelectOption('Boston','Boston'));
    optionList.add(new SelectOption('Washington','Washington'));  
  } 
  else
  {
   optionList.add(new SelectOption('AP','AP'));
   optionList.add(new SelectOption('KN','KN')); 
   optionList.add(new SelectOption('Boston','Boston'));
   optionList.add(new SelectOption('Washington','Washington'));        
  }    
  return optionList;     
}
}