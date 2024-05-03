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

//Iterating over a list
List<String> favoriteMovies = new List<String>();
favoriteMovies.add('Matrix');
favoriteMovies.add('Forrest Gump');
favoriteMovies.add('Toy Story');
favoriteMovies.add('Nacho Libre');
favoriteMovies.add('Shawshank Redemption');
for(String movie: favoriteMovies) {
    System.debug('Favorite movies: '+movie);
}

//Iterating over a set
Set<Integer> employeeIDs = new Set<Integer>();
employeeIDs.add(001);
employeeIDs.add(002);
employeeIDs.add(003);
employeeIDs.add(004);
employeeIDs.add(004);
for(Integer id: employeeIDs) {
    System.debug('Unique employee ID: '+id);
}

//Iterating over a map
Map<String,String> countryCapital = new Map<String,String>();
countryCapital.put('USA', 'D.C');
countryCapital.put('Argentina', 'Buenos Aires');
countryCapital.put('Cambodia', 'Phnom Penh');
countryCapital.put('Mexico', 'Mexico City');
countryCapital.put('Japan', 'Tokyo');

for(String country: countryCapital.keySet()) {
    System.debug('The capital of '+ country + ' is '+countryCapital.get(country));
}

