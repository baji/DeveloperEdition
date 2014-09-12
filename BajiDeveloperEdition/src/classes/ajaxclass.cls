public class ajaxclass {

    public String currentTime { get; set; }

    public void setCurrentTime() {
    
        currentTime = System.now().Format('EEEE, MMMM d, yyyy - hh:mm:ss');
        }

}