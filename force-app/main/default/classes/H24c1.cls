public class H24c1 {

     
    public  void salaryOfEmployee(string name, integer actualsalary ,integer noofab)
    {
        Date LastMonth = date.today().addmonths(-1);
        integer noofworkingdays=LastMonth.daysBetween(system.today());
        
        system.debug('lastmonth:' +LastMonth);
        system.debug('no of working days:'+noofworkingdays);
        System.debug('actualsalary='+actualsalary);
        
        system.debug('Employee Name-' +name);
        decimal priceperday=actualsalary / noofworkingdays ;
        System.debug('priceperday='+priceperday);
        Integer PresentDays=noofworkingdays-noofab;
        System.debug('PresentDays='+PresentDays);
        decimal salary = PresentDays *priceperday;
		system.debug('salary-' +salary);        
    } 
    
}