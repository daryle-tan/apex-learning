integer shorterNumbers; //declariation
Long longerNumbers = 10231234324234L; //initialization
System.debug(longerNumbers); //10231234324234
double decimalNumbers = 3.14;//64-bit floating point
decimal alsoDecimalNumbers = 3.14;//128-bit floating point

System.debug(decimalNumbers.intValue()); //3

//Boolean Data type
Boolean isThreeGreater = false;

isThreeGreater =(3>2);
System.debug('Value:' + isThreeGreater);//false

String instructor = 'Sally';
String student = 'Hannah';
Boolean isSameName = (instructor==student);
System.debug('isSameName: '+isSameName);//false

//Date Data Types
//Date
Date todayDateValue = Date.today();
System.debug('today: '+ todayDateValue);
System.debug('5 days from today: '+ todayDateValue.addDays(5));
//Date/Time
Datetime nowValue = DateTime.now();//utc
System.debug('now: '+ nowValue.format());
//Time
Time timeValue = Time.newInstance(19,25,0,0);
System.debug('timeValue: '+timeValue);

//ID Data Type
Account accountValue = new Account(Name='Testing Account 22');
insert accountValue;//DML statement
Id codeTestId=accountValue.Id;
System.debug('accountValue ID: '+codeTestId);

//Exercise
Double salary = 101.56;
System.debug('Salary: '+ salary);
Integer age =36;
System.debug('Age:'+age);

String sessionGreeting = 'hello Hola Too My Session!';
// 'Hello to Code With Sally session.';
sessionGreeting = sessionGreeting.toLowerCase();
sessionGreeting = sessionGreeting.replace('hola too my', 'to Code With Sally');
sessionGreeting = sessionGreeting.replace('!', '.');
sessionGreeting = sessionGreeting.substring(0,1).toUpperCase() + sessionGreeting.substring(1);
System.debug('Updated Greeting:'+ sessionGreeting);

Boolean isMorning;
String day = 'Day';
String night = 'Night';
isMorning = (day == night);
System.debug('isMorning:'+isMorning);
Date threeMonthsFromNow = Date.today();
System.debug('three months from now:'+threeMonthsFromNow.addMonths(3));