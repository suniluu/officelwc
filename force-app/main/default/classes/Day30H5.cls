public class Day30H5 implements Day30H3,Day30H4 {
    integer Empcode;
    Integer noofhourspresent;
    decimal salary;
    string s;
    
    public  void calculateRempolyee(integer Empcode,Integer noofdayspresent,decimal salary){
        Date dat=System.today();
        Integer days=date.daysInMonth(dat.year(), dat.month());
        Decimal salaryperday=salary/days;
        decimal dsalary=salaryperday*noofdayspresent;
        
        decimal tax=dsalary*0.10;
        decimal aftertaxCut=dsalary-tax;
        system.debug('Empcode='+Empcode);
        System.debug('actual Salary='+salary);
        System.debug('No of days in month='+days);
        System.debug('No of days present='+noofdayspresent);
        System.debug('salaryperday='+salaryperday.setScale(2));
        System.debug('salary='+dsalary.setScale(2));
        System.debug('salary tax is='+tax.setScale(2));
        System.debug('after tax deducted in salary='+aftertaxCut.setScale(2));
     
    }
    public  void calculatedailyempolyee(Integer empCode,Integer noofhourspresent,Decimal salary){
        
         Integer noofworkinghours=12;
        decimal perhourpay=salary/noofhourspresent;
        decimal dsalary=perhourpay*noofhourspresent;
       
        System.debug('Empcode='+Empcode);
        System.debug('Actual daily pay='+salary);
        System.debug('no of working hours='+noofworkinghours);
        System.debug('per hour pay='+perhourpay.setScale(2));
        system.debug('no of hours worked='+noofhourspresent);
        System.debug('daily wage='+dsalary.setScale(2));
        
    }
    /*public void salary( string s)
    {
        
        if(s=='RegularEmpolyee')
        {
            Day30H5.calculateRempolyee(integer Empcode,Integer noofhourspresent,decimal salary);
        }
        else if(s=='DailywageEmployee')
        {
            Day30H5.calculatedailyempolyee(noofdaysorhours,salary,s);
        }
        else
        {
            System.debug('not matched');
        }
    }*/

}