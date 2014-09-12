public with sharing class selected_pagination {

    public selected_pagination(ApexPages.StandardSetController controller) {

        controller.setPageSize(10);
    
    }

}