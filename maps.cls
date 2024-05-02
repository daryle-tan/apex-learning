Map<String,Decimal> mapStudentAge = new Map<String,Decimal>();
System.debug('check MapstudentAge:' +mapStudentAge);
mapStudentAge.put('Sally', 33);//{Sally=40}
mapStudentAge.put('Sally', 13);//{Sally=13}
mapStudentAge.put('Adam', 22);//{Adam=22, Sally=13}
mapStudentAge.put('Ahmed', 25);//{Adam=22, Sally=13, Ahmed=25}
System.debug(mapStudentAge);

//Get Method
Decimal ageValue = mapStudentAge.get('Adam');
System.debug('Adam age is: '+ageValue);
System.debug('Sally age is: '+mapStudentAge.get('Sally'));
//ternary operator
mapStudentAge.containskey('Ahmed') ?
System.debug('Ahmed Age is : '+mapStudentAge.get('Ahmed')) :
System.debug('Ahmed is not in the map');

System.debug('Ahmed Age is : ' + (mapStudentAge.containsKey('Ahmed') ? String.valueof(mapStudentAge.get('Ahmed')) : 'Ahmed is not in the map'));
