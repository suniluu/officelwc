public with sharing class searchproducts {
    public searchproducts() {

    }
    
        @AuraEnabled
        public static list<CCX_Product__c> productSearchs(string cat)
        {
            CCX_Category__c category=[SELECT name,Category_Name__c,
            (SELECT Product_Name__c,Current_Quantity__c from CCX_Products__r)
            from CCX_Category__c WHERE Category_Name__c=:cat ] ;
            list<CCX_Product__c> products=category.CCX_Products__r;
        return products;
        }
    
    }

