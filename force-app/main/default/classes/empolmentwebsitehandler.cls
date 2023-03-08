public class empolmentwebsitehandler {
 public static void calculatingTax(list<Empolyment_Website__c> emp)
    {
        for(Empolyment_Website__c emp1:emp)
        {
            if(emp1.Maximum_Budget__c < 3000000)
            {
                if(emp1.Maximum_Budget__c < 200000)
                {
                    emp1.Tax__c=5; 
                }
                emp1.Tax__c=25;
            }
            else
            {
                emp1.Tax__c=10;
            }
            
            
        }
    }
}