/*
 * Controller for multi attachment component
 */
 
public with sharing class MultiAttachmentController 
{
    // the parent object it
    public Id sobjId {get; set;}
    
    // list of existing attachments - populated on demand
    public List<Attachment> attachments;
    
    // list of new attachments to add
    public List<Attachment> newAttachments {get; set;}
    
    // the number of new attachments to add to the list when the user clicks 'Add More'
    public static final Integer NUM_ATTACHMENTS_TO_ADD=1;

    // constructor
    public MultiAttachmentController()
    {
        // instantiate the list with a single attachment
        newAttachments=new List<Attachment>{new Attachment()};
    }   
    
    // retrieve the existing attachments
    public List<Attachment> getAttachments()
    {
        // only execute the SOQL if the list hasn't been initialised
        if (null==attachments)
        {
            attachments=[select Id, ParentId, Name, Description from Attachment where parentId=:sobjId];
        }
        
        return attachments;
    }

    // Add more attachments action method
    public void addMore()
    {
        // append NUM_ATTACHMENTS_TO_ADD to the new attachments list
        for (Integer idx=0; idx<NUM_ATTACHMENTS_TO_ADD; idx++)
        {
            newAttachments.add(new Attachment());
        }
    }    
    
    // Save action method
    public void save()
    {
        List<Attachment> toInsert=new List<Attachment>();
        for (Attachment newAtt : newAttachments)
        {
            if (newAtt.Body!=null)
            {
                newAtt.parentId=sobjId;
                toInsert.add(newAtt);
            }
        }
        insert toInsert;
        newAttachments.clear();
        newAttachments.add(new Attachment());
        
        // null the list of existing attachments - this will be rebuilt when the page is refreshed
        attachments=null;
    }
    
    // Action method when the user is done
    public PageReference done()
    {
        // send the user to the detail page for the sobject
        return new PageReference('/' + sobjId);
    }
    
    /******************************************************
     *
     * Unit Tests
     *
     ******************************************************
     
    private static testMethod void testController()
    {
        Account acc=new Account(Name='Unit Test');
        insert acc;
        MultiAttachmentController controller=new MultiAttachmentController();
        controller.sobjId=acc.id;
        
        System.assertEquals(0, controller.getAttachments().size());
        
        System.assertEquals(1, controller.newAttachments.size());
        
        controller.addMore();
        
        System.assertEquals(1 + NUM_ATTACHMENTS_TO_ADD, controller.newAttachments.size());
        
        // populate the first and third new attachments
        List<Attachment> newAtts=controller.newAttachments;
        newAtts[0].Name='Unit Test 1';
        newAtts[0].Description='Unit Test 1';
        newAtts[0].Body=Blob.valueOf('Unit Test 1');

        newAtts[2].Name='Unit Test 2';
        newAtts[2].Description='Unit Test 2';
        newAtts[2].Body=Blob.valueOf('Unit Test 2');
        
        controller.save();
        
        System.assertEquals(2, controller.getAttachments().size());
        System.assertNotEquals(null, controller.done());
    }
    */
}