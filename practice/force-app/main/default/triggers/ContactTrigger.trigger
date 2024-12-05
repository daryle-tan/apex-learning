// can't create a new instance of a trigger & therefore shouldn't write methods
// create one trigger per object otherwise there is no order on how the triggers will fire
trigger ContactTrigger on Contact (before update, after update) 
{
    if(Trigger.isBefore && Trigger.isUpdate) {
        System.System.debug(('This ran!'));
       
    }

    if(Trigger.isAfter){
        validateData();
        kewlMethod();
    }

    public static void validateData(){
        for(Contact cont: trigger.new){
            if(cont.FirstName == 'Hi'){
                cont.addError('You can\'t have the first name of Hi, please change it');
            }
        }
    }

    public static void kewlMethod(){
        for(Contact cont : trigger.new){
            Contact oldContact = Trigger.oldMap.get(cont.Id);
            if(cont.Birthdate != oldContact.Birthdate){
                // added a validation rule
                cont.LastName  = 'Taco Bell';
            }       
        }
    }


}