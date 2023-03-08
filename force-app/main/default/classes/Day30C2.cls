public without sharing class Day30C2 {

    public void displayPositionCount()
    {
        list<Position__c> pos=[select id from Position__c];
        integer posCount=pos.size();
        System.debug('With sharing no of records='+posCount);
    }
}