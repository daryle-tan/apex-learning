// can't create a new instance of a trigger & therefore shouldn't write methods
trigger ContactTrigger on Contact (before update, after update) 
{
    if(Trigger.isBefore && Trigger.isUpdate) {
        System.System.debug(('This ran!'));
       
    }

    if(Trigger.isAfter){
        kewlMethod();
    }

    public static void kewlMethod(){
        for(Contact cont : trigger.new){
            System.debug('this is a contact ::: '+cont);
        }
        
    }
}