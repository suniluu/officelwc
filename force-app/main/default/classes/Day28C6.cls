public class Day28C6 {
    Public integer age;
    public integer salary;
    public integer newsalary;
public void calculatenewsalary(Integer age,integer salary)    
{
    this.age=age;
    this.salary=salary;
    if(age>25)
    {
        If(salary>30000)
        {
        newsalary=salary+1000;
    }
    }

    System.debug('age='+age);
    System.debug('salary='+salary);
    System.debug('newsalary='+newsalary);
    }
}