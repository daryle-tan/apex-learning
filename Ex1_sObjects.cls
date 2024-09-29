// create:
List<Account> lstAccounts = new List<Account>{
    new Account(Name = 'test1'),
    new Account(Name='test2'),
    new Account(Name='test3')
};

insert lstAccounts;

// Read
List<Account> lstAccounts = [SELECT Id, Name FROM Account WHERE Name like 'test%'];

// Update
for(Account accountObj : lstAccounts){
    accountObj.Name += '_Updated';
}
update lstAccounts;

// Delete
Account delAccObj = [SELECT Id,Name FROM Account WHERE Id = '001Hn000027xUmxIAE'];
delete delAccObj;

//Try/Catch
try{
    Account accountObj = [SELECT Name, Active__c FROM Account WHERE HERE Id = '001Hn000027xUmxIAE'];
    delete accountObj
}catch(DmlException e){
    System.debug('Error: '+e.getMessage());
}catch(Exception ex){
    System.debug('Generic Error: '+ex.GetMessage());
}

//Exercise 2
// Create a list of five Contact records associated with a single Account and insert them in bulk
Account accObjMain = new Account(Name='Relic');
List<Contact> lstContacts = new List<Contact>{
    new Contact(Name='C1', accountId=accObjMain.Id),
    new Contact(Name='C2', accountId=accObjMain.Id),
    new Contact(Name='C3', accountId=accObjMain.Id),
    new Contact(Name='C4', accountId=accObjMain.Id),
    new Contact(Name='C5', accountId=accObjMain.Id),
};
insert lstContacts;
// Query and display the inserted records
List<Contact> getLstContacts = [SELECT Name FROM Contact WHERE accountId =: accObjMain.Id];
for(Contact cObj: getLstContacts) {
    System.debug('The contact name is '+cObj.Name +' and accountId is '+cObj.accountId)
};

//Exercise 3
//Write a SOQL query to retrieve all Contact records where the Account.Name equals "Acme Corp". Display the contacts' names.
List<Contact> acmeContacts = [SELECT Name, (SELECT FirtName, LastName from Contacts) FROM Account WHERE Name = 'Acme Corp'];
for(Contact contactObj  : acmeContacts){
    System.debug('These contacts fall under Acme corp: '+contactObj)
}
//Exericse 4
//Using Database.insert and Error Handling Task:
// Insert a list of Opportunity records using Database.insert and handle any errors.
// Ensure at least one record fails to simulate an error and print error messages

List<Opportunity> lstOpportunities = new List<Opportunity>{
    new Opportunity(Name = 'o1'),
    new Opportunity(Name = 'o2'),
    new Opportunity(Name = 'o3'),
}
try {
    List<Database.SaveResult> results = Database.insert(lstOpportunities, true);
}catch(DmlException e){
    System.debug('Error: '+e.getMessage());
}
//Exercise 5
// Working with Related Records Task:
// Create an Account record and associate it with three Contact records
// Query the Account and ensure the Contacts are related. Update the Contacts' phone numbers in bulk
Account accObj2 = new Account(Name='Bit Tech');
insert accObj2;

Contact con1 = new Contact(FirstName='Go', LastName='Pro', AccountId=accObj2.Id);
Contact con2 = new Contact(FirstName='Helga', LastName='Arnold', AccountId=accObj2.Id);
Contact con3 = new Contact(FirstName='Felish', LastName='Gertrude', AccountId=accObj2.Id);

List<Contact> lstCon = new List<Contact>{con1, con2, con3};
insert lstCon;

Account queryAcc = [SELECT Name, (SELECT FirstName, LastName from Contacts) FROM Account WHERE Name = 'Bit Tech'];


//Exercise 6:
// Handling Generic SObjects Task:
// Create a method that accepts a List<SObject> and inserts the records, regardless of whether they are Accounts, Contacts, or Opportunities.
public void insertSObject(List<SObject> lstSObjects){
    insert lstSObjects;
}