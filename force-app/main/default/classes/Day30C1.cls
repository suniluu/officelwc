public with sharing class Day30C1 {
    Public void displayPositionCount()
    {
        list<Position__c> pos=[Select id from Position__c];
        Integer posCount=pos.size();
        System.debug('with sharing no of record='+posCount);
    }

}