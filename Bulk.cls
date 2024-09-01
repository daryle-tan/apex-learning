Account accountObj1 = new Account(Name='Sobject3');
Account accountObj2 = new Account(Name='Sobject4');
Account accountObj3 = new Account(Name='Sobject5');

List <Account> lstAccounts = new Liist<Account>();
lstAccounts.add(accountObj1);
lstAccounts.add(accountObj2);
lstAccounts.add(accountObj3);

insert lstAccounts;

List<Account> accounts = new List<Account>{
    new Account(Name = 'TestIssue1'),
    new Account(Name = 'null'),
    new Account(Name = 'TestIssue3')
};

List<Database.SaveResult> results =  Database.insert(accounts, false);

// Create Parent record
Account accountObj  = new  Account(Name='Tech Corp');
insert accountObj;

// Create Child record
Contact contact1 = new Contact(FirstName='John', LastName='Doe', AccountId=accountObj.Id);
Contact contact2 = new Contact(FirstName='Jane', LastName='Doe', AccountId=accountObj.Id);

List<Contact> lstContacts = new List<Contact>{contact1, contact2};
insert lstContacts;