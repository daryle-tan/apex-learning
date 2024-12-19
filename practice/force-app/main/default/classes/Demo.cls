public with sharing class DemoClass {
    
    public Integer multiplyNumbers(Integer intOne, Integer intTwo){
        return intOne*intTwo;
    }

    public void caseUpdater(Case caseToUpdate){
        if(Test.isRunningTest()){
            caseToUpdate.subject = 'Taco Tuesday';
        } else {
        caseToUpdate.subject = 'Kewl Story Bruh';
        updateCaseDescription();
        update caseToUpdate;
        }
    }
    // @TestVisible is rarely used
    @TestVisible
    private void updateCaseDescription(){}

}