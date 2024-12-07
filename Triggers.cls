// Triggers are apex code that executes automatically in response to database events (e.g. insert, update, delete)
// Triggers are used to automate business logic when a record is modified or specific conditions are met.
// Use cases for Triggers are enforcing validation rules, creating child records automatically, or performing complex calculations

// Trigger Types
// Before Triggers: validate or modify data before it's saved to the database.
// After Triggers: perform actions (e.g., send emails, create related records) after the data is saved to the database.

// Trigger Events
// Insert - create new record
// Update - change an existing record
// Delete - delete a record
// Undelete - recover a deleted record
// Upsert - create or update (depends if the record exists or not)
// Merge - update and delete (merge 2 records into one such as in duplicate scenarios)

// Context variables in Triggers are built-in Apex variables provided by Salesforce that allow you to access and interact with the data being processed in a trigger.
// Common Context Variables are:
// - Trigger.new: List of new records
// - Trigger.old: List of existing records before an update or delete

trigger TriggerName on ObjectName (trigger_events) {
    // code block
}

trigger AccountTrigger on Account (before insert, after insert) {
    if(Trigger.isBefore) {
        if(Trigger.isInsert){
            // Before Insert
            for(Account accountObj : Trigger.new) {
                if(accountObj.Industry == null){
                    accountObj.Industry = 'Technology';
                }
            } 
        }else if(Trigger.isUpdate) {
                // Before Update
            for(Account accountObj : trigger.new){
                Account oldAccountObj = Trigger.oldMap.get(accountObj.id);
                if(accountObj.AnnualRevenue<1000000 && accountObj.AnnualRevenue!=oldAccountObj.AnnualRevenue && oldAccountObj.AnnualRevenue >=  1000000){
                    accountObj.addError('Annual Revenue cannot be reduced below $1,000,000')
                }
            }
        }
    } else if(Trigger.isAfter){
        List<Task> tasks = new List<Task>();
        for(Account acc : Trigger.new){
            Task welcomeTask = new Task(Subject = 'Welcome to Salesforce!', WhatId = acc.Id,OwnerId = acc.OwnerId,Status = 'Not Started', Priority = 'Normal');
            tasks.add(welcomeTask);
        }
        insert tasks;
    }
}

