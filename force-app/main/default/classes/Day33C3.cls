public class Day33C3 {
    AggregateResult aggrResult=[Select count(Min_Pay__c),
                                sum(Min_Pay__c),Max(Min_Pay__c),
                                Min(Min_Pay__c),avg(Min_Pay__c),
                                count_distinct(Min_Pay__c) from
                                Position__c];
    AggregateResult aggrResult2=[Select count(Min_Pay__c)countofminpay,
                                 Sum(Min_Pay__c)totalMinpay,
                                 Max(Min_Pay__c)MaximumMinpay,
                                 Min(Min_Pay__c)MinimumMinPay,
                                 Avg(Min_Pay__c)AverageMinPay,
                                 Count_Distinct(Min_Pay__c)DistinctCount
                                 From Position__c
                                ];
    public void ReadAggregateResult()
    {
        system.debug('Aggregate Result using Exper');
        System.debug('No of Records in position object='+aggrResult.get('expr0'));
        System.debug('Sum of min pay in position object='+aggrResult.get('expr1'));
        System.debug('Max of min pay in position object='+aggrResult.get('expr2'));
        System.debug('min of min pay in position object='+aggrResult.get('expr3'));
        System.debug('Average of min pay in position object='+aggrResult.get('expr4'));
        System.debug('No of distinct min pay records in position object='+aggrResult.get('expr5'));
        
        
        System.debug('Aggregate Result using alias Name');
        Decimal c=(decimal)aggrResult2.get('countofminpay');
        Decimal t=(decimal)aggrResult2.get('totalMinpay');
        Decimal mx=(decimal)aggrResult2.get('MaximumMinpay');
        Decimal mn=(decimal)aggrResult2.get('MinimumMinPay');
        Decimal avg=(decimal)aggrResult2.get('AverageMinPay');
        Decimal dc=(decimal)aggrResult2.get('DistinctCount');
        
        system.debug('Aggregate Result using Exper');
        System.debug('No of Records in position object='+c);
        System.debug('Sum of min pay in position object='+t);
        System.debug('Max of min pay in position object='+mx);
        System.debug('min of min pay in position object='+mn);
        System.debug('Average of min pay in position object='+avg);
        System.debug('No of distinct min pay records in position object='+dc);
        
    }
}