<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_Employee_is_created</fullName>
        <description>New Employee is created</description>
        <protected>false</protected>
        <recipients>
            <recipient>bajidssk@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Employee_Creation</template>
    </alerts>
    <fieldUpdates>
        <fullName>addtext</fullName>
        <field>empno__c</field>
        <formula>empno__c  + &quot;SKB&quot;</formula>
        <name>addtext</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>New Employee</fullName>
        <actions>
            <name>New_Employee_is_created</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Company_CEO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>When a new employee is created.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>prefix_EMP</fullName>
        <actions>
            <name>addtext</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>concatenating text before the employee no</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
