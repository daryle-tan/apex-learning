Map<String,Decimal> mapStudentAge = new Map<String,Decimal>();
System.debug('check MapstudentAge:' +mapStudentAge);
mapStudentAge.put('Sally', 33);//{Sally=40}
mapStudentAge.put('Sally', 13);//{Sally=13}
mapStudentAge.put('Adam', 22);//{Adam=22, Sally=13}
System.debug(mapStudentAge);

//Get Method
Decimal ageValue = mapStudentAge.get('Adam');
System.debug('Adam age is: '+ageValue);
System.debug('Sally age is: '+mapStudentAge.get('Sally'));
//ternary operator
System.debug('Ahmed Age is : '+mapStudentAge.get('Ahmed'));