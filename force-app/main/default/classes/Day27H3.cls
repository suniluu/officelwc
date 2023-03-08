public class Day27H3 {

    //list of salaries
    
    public list<decimal> Salary=new list<decimal>{9520,5644.00,60000.00,70000.00,80000.00,96000.00};
   
   	integer x=salary.size();
    public list<decimal> HikeSalary=new decimal[x];
    
    public void salaryUpdation()
    {
        system.debug('Salary :' +Salary);  
        for(integer i=0;i<Salary.size();i++)
        {
            	HikeSalary[i]=Salary[i] + (Salary[i] * 0.1) ;
            	
            system.debug('Hiked Salary :' +HikeSalary[i]);
        }
        System.debug(HikeSalary);
    }

}