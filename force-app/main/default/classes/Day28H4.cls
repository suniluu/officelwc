public class Day28H4 {
     Public Integer subject;
     Public Integer subject2;
     Public Integer subject3;
     Public String grade;
     Public Decimal total;
     Public Decimal Percent;
public void result(String Name,Integer Subject,Integer Subject2,Integer Subject3)    {
    this.subject=subject;
    this.subject2=subject2;
    this.subject3=subject3;
    total=subject+subject2+subject3;
    Percent=total/300*100;
    
    If((Subject>=40&&Subject2>=40&&Subject3>=40)&&Percent>80)
    {
        grade='Distinction';
        System.debug(+Name+' is passed in '+grade);
    }
    else    If(Percent>60)
    {
        grade='First Grade';
        System.debug(+Name+' is passed in '+grade);
    }
    else    If(Percent>50)
    {
        grade='Second Grade';
        System.debug(+Name+'  is passed in '+grade);
    }
    else If(Percent>=40)
    {
        grade='passed';
    System.debug(+Name+'  is passed '+grade);
    }
    else
    {
        grade='fail';
        System.debug(+Name+'    is  '+grade);
    }
       results();
    }
    public void results()
    {
        System.debug('subject='+subject);
        System.debug('subject2='+subject2);
        System.debug('subject3='+subject3);
        System.debug('total='+total);
        System.debug('Percent='+Percent.setScale(2));
    }
    
}