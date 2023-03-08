public class day38C9 implements Schedulable {
    public void execute(SchedulableContext sc)
    {
        list<Opportunity> Proposal=[select name,StageName
                                   from Opportunity where StageName='Proposal/Price Quote' and createdDate<=LAST_N_DAYS:10];
        for(Opportunity task:Proposal)
        {
         task t=new Task();
            t.WhatId=task.id;
            t.OwnerId='0055g00000FJLN5AAP';
            t.subject='Send Letter';
            insert t;
        }
    }

}
/*
 day38C9 obj=new day38C9();
string timeexpr='0 53 4 25 10 ?';
id.schjobj=System.schedule('My',timeexpr,obj);
*/