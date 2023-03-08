public class Day30H6 {
     Public integer p;
     public decimal salary;
     public string name;
    public void salary(Integer noofdaysorhours,decimal salary,string s)
    {
        this.p=noofdaysorhours;
        this.salary=salary;
        this.name=s;
        if(Name=='RegularEmpolyee')
        {
            Day30H5.calculateRempolyee(p,salary,name);
        }
        else if(Name=='DailywageEmployee')
        {
            Day30H5.calculatedailyempolyee(p,salary,name);
        }
        else
        {
            System.debug(' not matched');
        }
    }
}