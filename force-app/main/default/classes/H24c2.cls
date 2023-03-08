public class H24c2 {
             Date dateOfBirth = Date.newInstance(1999, 03,26);
         Date today = system.today();
    public void Age (){

        
         System.debug('Date Of Birth = '+ dateOfBirth);
         System.debug('Today Date = '+ today);
        
         Integer Days = dateOfBirth.daysBetween(today) ;
         System.debug('Days = '+Days);
         
         Integer Age = Days/365 ;
         System.debug('Age = '+Age);
    }
}