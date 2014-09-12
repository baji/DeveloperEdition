<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_will_be_sent_on_birthday</fullName>
        <description>Email will be sent on birthday</description>
        <protected>false</protected>
        <recipients>
            <recipient>bajidssk@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Temp1</template>
    </alerts>
    <alerts>
        <fullName>Wishing_Happy_Birhtday</fullName>
        <description>Wishing Happy Birhtday</description>
        <protected>false</protected>
        <recipients>
            <recipient>bajidssk@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Temp1</template>
    </alerts>
    <rules>
        <fullName>Birthday Wishes</fullName>
        <actions>
            <name>Wishing_Happy_Birhtday</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>IF( Birthdate  =  TODAY() , true, false)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
