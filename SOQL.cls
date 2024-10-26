// Sorting and limiting results(ORDER BY, LIMIT)
//SELECT fields FROM object WHERE condition ORDER BY Field ASC/DESC LIMIT Limit Number
//SELECT Name, CustomCreatedDate__c from Account WHERE CustomCreatedDate__c !=null ORDER BY CustomCreatedDate__c ASC, FutureDate__c ASC LIMIT 2

//Offset aka pagination
//SELECT Name, FirstName,LastName,AccountId from Contact order by firstName asc limit 5 offset 5
// this will retrieve the next 5 records
// change offset to 10 to get the next set of 5 records
// the offset will be an increment of the limit eg 5-10-15-20...
//SELECT COUNT(Id) noAccounts, SUM(AnnualRevenue) totalRevenue FROM Account WHERE Industry ='Education'
    Decimal revenue = (Decimal)resultObj.get(resultObj.totalRevenue);
    Decimal revenue = (Decimal)resultObj.get(resultObj.totalRevenue);
List<AggregateResult> lstResults = [SELECT COUNT(Id) noAccounts, SUM(AnnualRevenue)totalRevenue  FROM Account WHERE Industry ='Education'];
for(AggregateResult resultObj : lstResults) {
    Integer count = (Integer)resultObj.get('noAccounts');
    Decimal revenue = (Decimal)resultObj.get('totalRevenue');
    System.debug('Count: '+count);
    System.debug('Revenue: '+revenue);

}

//GROUP BY:
// - Groups records based on specified fields
// - Used to aggregate data by categories or groups

//HAVING Clause:
// - Used to filtere aggregated results.
// - Works like the WHERE clause but applies conditions to the grouped records

//Difference between WHERE and HAVING:
// - WHERE filters records before aggregation
// - HAVING filters records aftere aggregation

//SELECT Industry, COUNT(Id) countAccounts, SUM(AnnualRevenue) totalRevenuue FROM Account WHERE AnnualRevenue > 100000 GROUP By Industry HAVING SUM(AnnualRevenue) > 9000000

// Oct 25,2024
//Querying Parent Records From Childs Records
// -Use dot notation to retrieve parent records from a child
SELECT FirstName, LastName, Account.Name from Contact

SELECT Name, ProjectTask__r.Name from ProjectTaskActivity

List<ProjectTask__c> lstTasks = [SELECT Name, ProjectTask__r.Name from ProjectTaskActivity];

for(ProjectTask__c taskObj : lstTasks){
    System.debug('Task: '+taskObj.Name + 'From Project: '+taskObj.Project__r.Name);
}

// Querying child records from parent records
SELECT Name, Industry, AnnualRevenue, (SELECT FirstName, LastName from Contacts) from Account

//Subquerying a custom child record
SELECT FirstName, LastName, (SELECT Name FROM Projects__r) FROM Contact

List<Contact> lstContacts = [SELECT FirstName, LastName,(SELECT Name FROM Project__r) FROM Contact];

for(Contact contactObj : lstContacts) {
    for(Project__c projectObj: contactObj.Projects__r) {
        System.debug('Project: '+projectObj.Name+' of contact '+contact.FirstName+' '+contactObj.LastName);
    }
}

// What is Dynamic SOQL?
// - Dynamic SOQL allows you to build and execute queries at runtime using strings in Apex.
// - It's useful when query conditions are variable or not known uuntil runtime.
// - Provides flexibility to dynamically construct complex queries based on user input or application logic
String name = 'John';
String queryName = '%' + name + '%';
List<Contact> queryResult = [SELECT Id FROM Contact WHERE (IsDeleted = false and Name like :queryName)];
System.debug('check queryResult: '+queryResult);