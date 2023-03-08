//Create an asset when create an OpportunityLineItem with associated Account
public class OpportunityLineItemHandler 
{
    public static void creatingAssest(list<opportunitylineitem> oplts)
    {
        list<id> opltsid = new list<id>();
        for(opportunitylineitem oplts1:oplts)
        {
            opltsid.add(oplts1.opportunityid);
        }
        list<id> accid = new list<id>();
        opportunity opps=[select AccountId,name,
                          account.Name
                           from opportunity
                           where id in:opltsid];
    
            accid.add(opps.AccountId);
        
        contact con = [select Id
                            from contact
                            where AccountId in:accid limit 1];
        OpportunityLineItem oplts2 = [select Quantity,UnitPrice,
                                           PricebookEntry.Product2Id
                                          from OpportunityLineItem
                                          where opportunityId in:opltsid];
        asset a=new asset();
        a.Name = opps.account.Name+' testassest';
        a.AccountId = opps.AccountId;
        a.ContactId = con.Id;
        a.Price=oplts2.UnitPrice;
        a.Quantity= oplts2.Quantity;
        a.Product2Id = oplts2.PricebookEntry.Product2Id;
        insert a;
        
    }//add a product to opportunity to product then an asset is created
  
    //Once an Opportunity line item  is inserted it will create insert a quotation also
    public static void creatingquotationWhenOpportunityLineItemIsInserted(list<opportunitylineitem> olt)
    {
        list<id> oppid = new list<id>();
        for(opportunitylineitem olt1:olt)
        {
            oppid.add(olt1.opportunityid);
        }
        Opportunity oppList =[Select Id,Name,Account.Name 
                                    from Opportunity 
                                    where Id in:oppId];

            quote newquote = new quote();
            newquote.OpportunityId = oppList.Id;
            newquote.Name=oppList.Account.Name+' TestQuote';
            insert newquote;
    }
    
    //Write a trigger on Opportunity line item when a line item deletes delete an opportuntiy as well
    public static void deletingOpportunityWhenopportunityLineitemIsDeleted(list<opportunitylineitem> oltd)
    {
        list<id> oltid = new list<id>();
        for(opportunitylineitem oltd1:oltd)
        {
            oltid.add(oltd1.opportunityid);
        }
        
          List<Opportunity> oppList=[Select Id 
                                     from Opportunity 
                                     where Id in:oltid];
		  if(oppList.size()>0)
          {
              delete oppList;
          }
     }
    public  static void updatingTotalSaleQuantityWhenOppIsInserted(list<OpportunityLineItem> olt)
    {
        list<id> oppids=new list<id>();
        list<id> accids=new list<id>();
        decimal opps=0;
     
    for(OpportunityLineItem olt1:olt)
    {
        oppids.add(olt1.OpportunityId);
        opps=opps+olt1.Quantity;
    }
     Opportunity opp=[select name,Account.id 
                      from Opportunity 
                      where id in:oppids];
     accids.add(opp.Account.id);
    /* account acc=[select name,Total_sales_Quantity__c from 
                  account 
                  where id in:accids];
     acc.Total_sales_Quantity__c = acc.Total_sales_Quantity__c +opps;
     update acc;*/
        
        
    }
   
public static void total(list<OpportunityLineItem>op)
{
    decimal quantity=0;
        list<id> productid =new list<id>();
        for(OpportunityLineItem op1:op)
        {
            productid.add(op1.product2id);
            quantity= quantity+op1.quantity;
        }
      
        
        List<Product2> pUpdate = new List<Product2>();
        List<Product2> pList=[Select Id,Available_Quantity__c,Total_Quantity__c 
                                from Product2 
                                where Id in:productid];
        for(product2 pList1:pList)
        {
           
          pList1.Available_Quantity__c = pList1.Total_Quantity__c-quantity;
           pUpdate.add(pList1); 
            
        }
        update pUpdate;
    }
    //Write a trigger on Opportunity line item , Add two picklist values in Product Family field
				//Electronic and Books And a picklist Product type on Opportunity with same picklist values
				//Now once you add a line item into Opportunity, check if Opportunity Product Type is same as opli Product Family 
				//let it be insert or add error The Product family does not match.
    public static void productfamily(list<OpportunityLineItem>p1)
    {
     list<id> ids=new list<id>();
        list<id> oppid=new list<id>();
        for(OpportunityLineItem p2:p1){
            ids.add(p2.Product2Id);
            oppid.add(p2.OpportunityId);
            
        }
      Product2 op1=[select name,Type,Family from Product2 where id in:ids];
        
       Opportunity opp=[select name,Product_type__c from Opportunity where id in:oppid];
      
            for(OpportunityLineItem p12:p1)
            {
                
                if(opp.Product_type__c!=op1.Family)
                {
                    p12.adderror('product type doesnot matches');
                }
                    
                
        }
    }
        
}