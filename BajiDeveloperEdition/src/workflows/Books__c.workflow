<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>BookArrives</fullName>
        <description>New Book Arrives to Book Shelf</description>
        <protected>true</protected>
        <recipients>
            <recipient>bajidssk@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Temp1</template>
    </alerts>
    <rules>
        <fullName>Book_Arrive</fullName>
        <actions>
            <name>BookArrives</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Books__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>When new book arrives automatically email will be sent</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
