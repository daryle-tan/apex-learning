/* SOSL Syntax Basics
    FIND {searhTerm} IN [searchScope] RETURNING [objectsAndFields]

    FIND 'searhTerm':
    - This search term is what SOSL will look for across the specified fields.

    IN [searchScope]:
    - The IN clause specifies where to search within the records.
    - Common Scopes are:
        - ALL FIELDS
        - NAME FIELDS
        - EMAIL FIELDS
    - It is optional. It is the scope of the fields to search. If not specified, the default search scope is all fields.
    
    RETURNING [objectsAndFields]:
    - The RETURNING clause specifies which objects and fields to return in the results.
    - You can list multiple objects, and for each object, specify the fields to retrieve.
    - It is Optional. If not specified, the search results contain the IDs of all objects found.


    FIND {the hope or tech?} IN Name Fields RETURNING Account(Id,Name,AnnualRevenue,Industry), Contact(FirstName,LastName,Account.Name) 

    -WHERE Clause
    FIND {the hope} in all fields returning account(id,name,industry WHERE industry='Apparel'), Contact(FirstName,LastName where LastName like 'Doe%') 

    -Order and Limit
    FIND {the hope} in all fields returning account(id,name,industry Order by Industry desc limit 2), Contact(FirstName,LastName where LastName like 'Doe%') 

*/

List<Account> lstAccounts=[Select Name,Industry FROM Account];
System.debug('check size: '+lstAccounts.size());
for(Account accountObj : lstAccounts){
    System.debug('Account Name: '+accountObj.Name);
}

List<List<Sobject>> lstResults = [FIND 'the hope or tech?' IN Name Fields RETURNING Account(Id,Name,AnnualRevenue,Industry), Contact(FirstName,LastName,Account.Name)];
System.debug('check size: '+lstResults.size());
System.debug('check first list: '+lstResults[0]);
System.debug('check first list: '+lstResults[1]);

//typecast
List<Account> lstAccounts=(List<Account>)lstResults[0];
List<Contact> lstContacts=(List<Contact>)lstResults[1];

for(Contact contactObj : lstContacts) {
    System.debug('check First Name: '+contactObj.FirstName);
}