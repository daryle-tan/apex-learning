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