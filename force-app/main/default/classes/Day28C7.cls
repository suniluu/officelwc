public class Day28C7 {
    Public integer age;
    public integer salary;
    public integer newsalary;
public void calculatesalary(Integer age,integer salary)    
{
    this.age=age;
    this.salary=salary;	
    if(age<25 && salary>30000)
    {
        newsalary=salary+10000;
    }
    else if(age>25 && age<40)
    {
       newsalary=salary+20000; 
    }
    else if(salary<35000)
    {
        newsalary=salary+25000;
    }
    else
    {
        newsalary=salary+5000;
    }
    display();
}
    public void display()
    {
    System.debug('age='+age);
    System.debug('salary='+salary);
    System.debug('newsalary='+newsalary);

    }
}