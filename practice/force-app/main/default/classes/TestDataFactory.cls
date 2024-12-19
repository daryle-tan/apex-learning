public with sharing class TestDataFactory {
    public static List<Cases> createCases(Integer numCases){
        List<Case> caseList = new List<Case>();
        for(Integer i = 0; i<numCases; i++){
            Case newCase = new Case(Subject = 'Awesome Case');
            caseList.add(newCase);
        }
        return caseList;
    }
}