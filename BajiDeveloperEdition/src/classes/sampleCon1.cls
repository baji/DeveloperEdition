public class sampleCon1 {

    public String countries { get; set; }
public PageReference test() {
return null;
}
public List<SelectOption> getItems() {
List<SelectOption> options = new List<SelectOption>();
options.add(new SelectOption('US','US'));
options.add(new SelectOption('CANADA','Canada'));
options.add(new SelectOption('MEXICO','Mexico'));
return options;
}
}