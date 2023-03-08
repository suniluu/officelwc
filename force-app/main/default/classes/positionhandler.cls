public class positionhandler {
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