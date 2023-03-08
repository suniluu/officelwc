public with sharing class searchproductfamily {
    public searchproductfamily() {

    }
    
        @AuraEnabled
        public static list<Product2> productSearchs(string cat) 
        {
            list<Product2> productss=[SELECT Name,Family from Product2
             WHERE Family=:cat ];
             return productss;
        }
    
    }

