public class Product2Handler {
public static void productfamily(list<Product2>p1)
    {
     list<id> ids=new list<id>();
        list<id> opids=new list<id>();
        for(Product2 p2:p1){
            ids.add(p2.id);
        }
        list<OpportunityLineItem> op1=[select name,Quantity from OpportunityLineItem where Product2.id in:ids];
        for(OpportunityLineItem op2:op1)
        {
            opids.add(op2.id);
        }
        Opportunity opp=[select name,Product_type__c from Opportunity where id in:opids];
        for(Product2 p3:p1)
        {
            for(OpportunityLineItem op3:op1)
            {
                if(opp.Product_type__c!=p3.Family)
                {
                    op3.adderror('product type doesnot matches');
                }
                
            }
        }
    }
}