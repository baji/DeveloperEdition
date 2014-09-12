public with sharing class PocketCRMAccountController {
     
        public PocketCRMAccountController() {}
     
        //========================================================================
        //INNER CLASSES
        //These support data request/response transport for remoting.
        //========================================================================
     
        // One of the parameters supplied by the DirectProxy read method.
        public class QueryRequest {
            Integer start;
            Integer recordCount;
            List < Map < String, String >> sortParams;
            String searchFilter = '';
     
            Public QueryRequest() {
                start = 1;
                recordCount = 1;
            }
     
            Public QueryRequest(Integer pStart, Integer pRecordCount) {
                start = pStart;
                recordCount = pRecordCount;
            }
        }
     
        // The server response expected by the ExtJS DirectProxy API methods.
        public class Response {
            public Boolean success;
            public String errorMessage;
            public List < SObject > records;
            public Integer total;
            Response() {
                records = new List < SObject > ();
                success = true;
            }
        }
        //=======================================================================
        //PUBLIC CRUD REMOTE ACTION METHODS CALLED BY THE SENCHA PROXY
        //=======================================================================
     
        @RemoteAction
        public static Response Query(QueryRequest qr){
     
        Response resp = new Response();
     
        //Enforce a limit on the number of rows requested.
        final integer QUERY_LIMIT = 100;
        if( qr.start >= QUERY_LIMIT ){
            resp.success = false;
            resp.errorMessage = 'Maximum number of records (' + String.valueOf(QUERY_LIMIT) + ') exceeded!';
            return resp;
        }
     
        try {
            getAllAccounts(qr, resp);
        } catch (Exception e) {
            resp.success = false;
            resp.errorMessage = 'Query failed: ' + e.getMessage();
        }
     
        return resp;
        }
        @RemoteAction
        public static Response Edit(List < Account > AccountData) {
            return updateAccountList(AccountData);
        }
     
        @RemoteAction
        public static Response Add(List < Account > AccountData) {
            return insertAccountList(AccountData);
        }
     
        @RemoteAction
        public static Response Destroy(List < Account > AccountData) {
            return deleteAccountList(AccountData);
        }
     
        //=======================================================================
        //PRIVATE HELPER METHODS
        //=======================================================================
     
        private static void getAllAccounts(QueryRequest qr, Response resp) {
     
        //Page size is set in the Sencha store as recordCount.   
        Integer pageSize = qr.recordCount;
     
        //Page number will be calculated.
        Integer pageNumber = 0;
     
        //Start is the record number indicating the start of the page.
        if (qr.start > 0) {
            pageNumber = qr.start / pageSize;
        }
     
        //Calculate the offset for SOQL.
        Integer offset = pageNumber * pageSize;
     
        //Build the query in pieces.
        String fieldList = 'Id,Name, Phone, Type, BillingCity';
        String whereClause = (qr.searchFilter != '' ? 'WHERE Name LIKE \'' + qr.searchFilter + '\'' : '');
                whereClause += '  And Type != null';
        String orderByClause = 'Name';
     
        //Construct a base query to which the page offsets will be added.
        String baseQuery = 'SELECT ' + fieldList + ' FROM Account ' + whereClause + ' ORDER BY ' + orderByClause;
     
        //Construct a count query to pass back the total records matching a search criteria.
        String baseCountQuery = 'SELECT COUNT() FROM Account ' + whereClause;
     
        //Construct the fetch query with the offset.
        String fetchQuery = baseQuery + ' LIMIT ' + pageSize + ' OFFSET ' + offset;
     
        try {
     
            //Set the count.
            resp.total = Database.countQuery(baseCountQuery);
     
            //Set the fetched recordset.
            resp.records = Database.query(fetchQuery);
     
            //Set the status flag.
            resp.success = true;
     
        } catch (Exception e) {
     
            //Set the total count of records matching the query.
            resp.total = 0;
     
            //Set the recordset to return.
            resp.records = new List < Account > ();
     
            //Set the status flag.
            resp.success = false;
     
        }
    }
     
        private static Response insertAccountList(List < Account > AccountData) {
            Response resp = new Response();
            resp.success = true;
     
            try {
                INSERT AccountData;
            } catch (Exception e) {
                resp.success = false;
                resp.errorMessage = 'Insert failed: ' + e.getMessage();
            }
            return resp;
        }
     
        private static Response updateAccountList(List < Account > AccountData) {
     
            Response resp = new Response();
            resp.success = true;
     
            try {
                UPDATE AccountData;
            } catch (Exception e) {
                resp.success = false;
                resp.errorMessage = 'Update failed: ' + e.getMessage();
            }
            return resp;
        }
     
        private static Response deleteAccountList(List < Account > AccountData) {
     
            Response resp = new Response();
            resp.success = true;
     
            try {
                DELETE AccountData;
            } catch (Exception e) {
                resp.success = false;
                resp.errorMessage = 'Deletion failed: ' + e.getMessage();
            }
            return resp;
        }
    }