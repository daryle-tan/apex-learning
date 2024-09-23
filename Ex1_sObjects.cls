// create:
Account accountObj1 = new Account(Name = 'test1');
Account accountObj2 = new Account(Name='test2');
Account accountObj3 = new Account(Name='test3');

List<Account> lstAccounts = new List<Account>();
  lstAccounts.add(accountObj1);
  lstAccounts.add(accountObj2);
  lstAccounts.add(accountObj3);


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