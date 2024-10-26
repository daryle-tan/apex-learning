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

//Querying Parent Records From Childs Records
// -Use dot notation to retrieve parent records from a child
SELECT FirstName, LastName, Account.Name from Contact

SELECT Name, ProjectTask__r.Name from ProjectTaskActivity

List<ProjectTask__c> lstTasks = [SELECT Name, ProjectTask__r.Name from ProjectTaskActivity];

for(ProjectTask__c taskObj : lstTasks){
    System.debug('Task: '+taskObj.Name + 'From Project: '+taskObj.Project__r.Name);
}
