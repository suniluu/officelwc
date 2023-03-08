public class Day38H1 implements Schedulable {
    public void execute(SchedulableContext sc)
    {
        list<Position__c> positionsopenedlastmonth=[select name,Functional_Area__c,Open_Date__c,
                                                    (select name from Job_Applications__R )
                                                    from Position__c where Open_Date__c=LAST_N_MONTHS:1
                                                    ];
        list<Position__c> deletepos=new list<Position__c>();
        for(Position__c P:positionsopenedlastmonth)
        {
            List<Job_Application__c> jp=p.Job_Applications__R;
            if(jp.size()==0)
            {
             deletepos.add(p);  
            }   
           
        }
        delete deletepos;
        
    }

}
/*Day38H1 obj=new Day38H1();
string timeexpr='';
id.schjobid=System.schedule('delete positions',timeexpr,obj);*/