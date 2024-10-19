Account accountObj = new Account(Name='Account1');
Contact contactObj = new Contact(FirstName='Alice', LastName='Wonderland');
Opportunity opportunityObj = new Opportunity(Name='New Deal', StageName='Prospecting');

insert accountObj;
insert contactObj;
insert opportunityObj;

List<SObject> lstRecords = new List<SObject>();
lstRecords.add(accountObj);
lstRecords.add(contactObj);
lstRecords.add(opportunityObj);

insert lstRecords;

//Dynamically  handling unknown object types
SObject genericObject = [SELECT Id, Name FROM Account LIMIT 1];
//SObject genericObject = [SELECT Id, LastName, FirstName FROM Contact LIMIT 1];
//SObject genericObject = [SELECT Id FROM Case Limit1];

//Use instanceof to check the type of SObject at runtime
if(genericObject instanceof Account){
    Account acc = (Account)genericObject; //downcasting
    System.debug('Account Name: '+ acc.Name);
} else if(genericObject instanceof Contact) {
    Contact con = (Contact)genericObject;
    System.debug('Contact Name:  '+ con.LastName+  'First Name: '+con.FirstName);
} else {
    System.debug('Unknown Object Type');
}

// Never do a SOQL query inside of a for loop
// 9.26.24
List<Account> accList = [SELECT Id FROM Account WHERE Active__c='Yes'];
Set<Id> setAccountIds = new Set<Id>();

for(Account acc : accList) {
    setAccountIds.add(acc.Id);
}

List<Contact> contacts = [SELECT Id, AccountId FROM Contact WHERE AccountId IN :setAccountIds];

Map<Id, List<Contact>> accountToContacts = new Map<Id, List<Contact>>();

for (Contact con : contacts) {
    if(!accountToContacts.containsKey(con.AccountId)) {
        accountToContacts.put(con.AccountId, new List<Contact>());
    }
    accountToContacts.get(con.AccountId).add(con);
}

List<Account> lstAccounts2 = new List<Account>();
lstAccounts2.add(new Account(Name='TestTan1'));
lstAccounts2.add(new Account());
lstAccounts2.add(new Account(Name'TestTan2'));

Database.SaveResult[] results = Database.insert(lstAccounts2, false);
for (Database.SaveResult sr : results) {
    if (!sr.isSuccess()) {
        System.debug('Failed to insert: ' + sr.getErrors()[0].getMessage());
    }
}