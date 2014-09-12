<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>CreateNewAccount</fullName>
        <apiVersion>29.0</apiVersion>
        <endpointUrl>https://app.informaticaondemand.com/saas/api/1/salesforceoutboundmessage/4a5AoqgFVFWC8CFjwRd45gCLZxVA3Eek</endpointUrl>
        <fields>BillingCity</fields>
        <fields>BillingCountry</fields>
        <fields>BillingPostalCode</fields>
        <fields>BillingState</fields>
        <fields>BillingStreet</fields>
        <fields>Id</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Type</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>bajidssk@gmail.com</integrationUser>
        <name>CreateNewAccount</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>itDuzzit_C2C_21853_message</fullName>
        <apiVersion>24.0</apiVersion>
        <description>itDuzzit itDuzzit_C2C_21853 webhook message</description>
        <endpointUrl>https://www.itduzzit.com/duzz/api/salesforce-webhook.xml?apitoken=0u6vxj0424dqz7k&amp;c2c=21853</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>Active__c</fields>
        <fields>AnnualRevenue</fields>
        <fields>BillingCity</fields>
        <fields>BillingCountry</fields>
        <fields>BillingLat__c</fields>
        <fields>BillingLong__c</fields>
        <fields>BillingPostalCode</fields>
        <fields>BillingState</fields>
        <fields>BillingStreet</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>CustomerPriority__c</fields>
        <fields>Date__c</fields>
        <fields>Description</fields>
        <fields>Email__c</fields>
        <fields>Fax</fields>
        <fields>First_Name__c</fields>
        <fields>Id</fields>
        <fields>Industry</fields>
        <fields>IsDeleted</fields>
        <fields>Jigsaw</fields>
        <fields>JigsawCompanyId</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Last_Name__c</fields>
        <fields>MasterRecordId</fields>
        <fields>Master_Score_c__c</fields>
        <fields>Name</fields>
        <fields>NumberOfEmployees</fields>
        <fields>NumberofLocations__c</fields>
        <fields>Organization_Phone__c</fields>
        <fields>Organization_Type__c</fields>
        <fields>OwnerId</fields>
        <fields>Ownership</fields>
        <fields>ParentId</fields>
        <fields>Phone</fields>
        <fields>Rating</fields>
        <fields>RecordTypeId</fields>
        <fields>SLAExpirationDate__c</fields>
        <fields>SLASerialNumber__c</fields>
        <fields>SLA__c</fields>
        <fields>ShippingCity</fields>
        <fields>ShippingCountry</fields>
        <fields>ShippingPostalCode</fields>
        <fields>ShippingState</fields>
        <fields>ShippingStreet</fields>
        <fields>Sic</fields>
        <fields>SignedBy__c</fields>
        <fields>Site</fields>
        <fields>SystemModstamp</fields>
        <fields>TickerSymbol</fields>
        <fields>Type</fields>
        <fields>UpsellOpportunity__c</fields>
        <fields>Website</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>bajidssk@gmail.com</integrationUser>
        <name>itDuzzit_C2C_21853</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Create New Account ERP</fullName>
        <actions>
            <name>CreateNewAccount</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>1=1</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>New task</fullName>
        <actions>
            <name>New_record_created</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>itDuzzit_C2C_21853_rule</fullName>
        <actions>
            <name>itDuzzit_C2C_21853_message</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>itDuzzit itDuzzit_C2C_21853 webhook rule</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>New_record_created</fullName>
        <assignedTo>bajidssk@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>3</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>New record created</subject>
    </tasks>
</Workflow>
