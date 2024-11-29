// use global keyword only when you want to allow access from outside of the org's codebase
// global with sharing class AccessModifiers
// {

// }

// use public access modifier when you want to allow access outside of the class so that it can be used other public accessible classes
// step down from global
public with sharing class AccessModifiers
{
    private Integer kewlInteger = 0;
    
    public void demoMethod(Integer intToSet) {
        determineIntegerCalculations(intToSet);
        System.debug('hi');
    }

    private Integer determineIntegerCalculations(Integer intToCalc) {
        return intToCalc + 45;
    }

    public static String conditionalStatementExample(Contact cont){
        if(cont.FirstName == 'Harry' &&  cont.LastName == 'Marry') {
            return 'Tacos';
        } else if (cont.FirstName == 'Potter' || cont.FirstName == 'Peter') {
            return 'cookie';
        } else {
            return 'Wut';
        }
    }

    public static String switchExample(Integer i) {
        switch on i {
            when 2 {
                return 'wow';
            }
            when 3,4,5 {
                return 'whoa';
            }
            when else {
                return 'bruuhhh';
            }
        }
    }

    public void updateContactLastName(List<Contact> contacts){
        System.debug('This is the list before iteration :::: '+ contacts);
        for(Integer i = 0; i < contacts.size(); i++) {
            System.debug('This is the current value of i ::: '+ i);
            contacts[i].LastName = 'Bamboozled';
        }
        System.debug('This is the list :::: '+ contacts);
        insert contacts;
    }

    public void updateContactsLastNameEnhanced(List<Contact> conts){
        for(Contact cont: conts){
            cont.LastName = 'Jamboozled';
        }
    }
}