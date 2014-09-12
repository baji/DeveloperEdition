public with sharing class FileUploadController {
 
    public List<DocumentWrapper> wrappers {get; set;}
    public static Integer addCount {get; set;}
     
  public Document document {
    get {
      if (document == null)
        document = new Document();
      return document;
    }
    set;
  }
 
  public PageReference upload() {
 
    document.AuthorId = UserInfo.getUserId();
    document.FolderId = UserInfo.getUserId(); // put it in running user's folder
 
    try {
      insert document;
    } catch (DMLException e) {
      ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error uploading file'));
      return null;
    } finally {
      document.body = null; // clears the viewstate
      document = new Document();
    }
 
    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'File uploaded successfully'));
    return null;
  }
 
 
 public void addRows()
 {
  for (Integer idx=0; idx<addCount; idx++)
  {
   wrappers.add(new DocumentWrapper());
  }
 }
 public class DocumentWrapper
 {
  public Document doc {get;  set;}
   
  public DocumentWrapper()
  {
   doc=new Document();
  }
 }
 
}