public class Day25h3 {
    public enum Cities{Hyderabad,Vizag,Delhi,Benguluru,Chennai,Nalgonda,Yadadri}
    Public Cities Name1;
    Public Cities Name2;
     Public Cities Name3;
    Public Cities Name6;
    Public Cities Name4;
    Public Cities Name5;
     Public Cities Name7;
    Public void Display()
    {
        System.debug('City Name1='+Name1);
         System.debug('City Name2='+Name2);
        Name1=Cities.Hyderabad;
        System.debug('City Name1 After Assignment='+Name1);
        Name5=Cities.Vizag;
        System.debug('City Name5 After Assignment='+Name5);
        }
    Public Void DisplayName2(Cities City,Cities City1)
    {
       Name2=City;
        System.debug('Name2 After Assignment='+Name2);
        Name4=City1;
        System.debug('Name4 After assignment='+Name4);
        Name3=DisplayName3();
        System.debug('Name3 After Return='+Name3);
        Name6=DisplayName6();
        System.debug('Name6 After Return='+Name6);
        Name7=DisplayName7();
        System.debug('Name7 After Return='+Name7);
    }
    Public Cities DisplayName3()
    {
        Name3=Cities.Delhi;
        Return Name3;
    }
     Public Cities DisplayName6()
    {
        Name6=Cities.Benguluru;
        Return Name6;
    }
     Public Cities DisplayName7()
    {
        Name7=Cities.Chennai;
        Return Name7;
    }
    
}