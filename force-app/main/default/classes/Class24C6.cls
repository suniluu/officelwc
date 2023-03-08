public class Class24C6 {
     String Name='Abhi';
    Decimal Salary=70000.00;
 
    Public void EmpolyeeDetails()
    {
       System.debug('Name='+Name);
        System.debug('Salary Is='+Salary);
        Decimal NewSalary=Salary*0.10;
        Decimal SalaryAfterIncrement=NewSalary+Salary;
        System.debug('Salary After Increment='+SalaryAfterIncrement);
        
    }

}