public class Tab_Con {
    
    public Integer randomSuffix{get;set;}
    
    public Tab_Con(){
        randomSuffix = getRandomNumber(10);
    }
    
    private Integer getRandomNumber(Integer size){
        Double d = Math.random() * size;
        return d.intValue();
    }
    
    static testMethod void testCon(){
        Tab_Con controller = new Tab_Con ();
        System.assertNotEquals(Null,controller.randomSuffix);
    }
    
}