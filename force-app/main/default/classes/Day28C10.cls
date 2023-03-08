public class Day28C10 {
    Public Integer n;
    Public Integer i=1;
    Public void printnumberinDescending(Integer n)
    {
        this.n=n;
        do{
            System.debug(n);
            n--;
        }
        while(n>=i);
    }
}