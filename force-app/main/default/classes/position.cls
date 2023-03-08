public class position {
    public static void job(list<Job_Application__c> ja)
    {
       integer j1=0;
        list<Position__c> acc=[select name,Functional_Area__c,Status__c,no_of_vacancies__c,
                          (select name,status__c from Job_Applications__r)
                          from Position__c];
        list<Position__c> p2=new list<Position__c>();
        for(Position__c p:acc)
            {
                list<Job_Application__c> j= p.Job_Applications__r;
                for(Job_Application__c j2:j)     
                {
                 if(j2.Status__c=='Hired')
                 {
                     j1++;
                 }
                }
                if(p.no_of_vacancies__c==j1)
                    {
                        p.Status__c='Closed-Filled';
                        p.no_of_vacancies__c=0;
                        p2.add(p);
                    }
            }
        update p2;
        
    }
    public static void settingownername(list<Position__c> pos)
     {
         for(Position__c pos1:pos)
         {
             if(pos1.Functional_Area__c =='Finance' || pos1.Functional_Area__c =='Ware Housing')
             {
                 pos1.OwnerId = pos1.createdbyid;
             }
         }
     }
}