// create:
List<Account> accounts = new List<Account>{
    new Account(Name = 'accountObj1'),
    new Account(Name = 'accountObj2'),
    new Account(Name = 'accountObj3'),
};

insert accounts;

// Read
List<Account> lstAccounts = [SELECT Id FROM Account];

// Update
for(Account accountObj : lstAccounts){
    accountObj.Name += '_Updated';
}
update lstAccounts;

// Delete
Account delAccObj = [SELECT Id FROM Account WHERE Id = '001Hn000026rXdKIAU'];
delete delAccObj;