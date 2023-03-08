public class day39C3 implements Schedulable {
    public void execute(SchedulableContext sc)
    {
       list<Position__c> positions=[select name,Functional_Area__c,Min_Pay__c
                                    from Position__c where Functional_Area__c='Human Resources']; 
        list<Position__c> updatedposition=new list<Position__c>();
        for(Position__c p:positions)
        {
            if(p.Min_Pay__c!=Null){
            p.Min_Pay__c=p.Min_Pay__c+(p.Min_Pay__c*0.10);
             updatedposition.add(p);   
        }
            update updatedposition;
        }
    }

}