public class Day28C8 {
        public string choice;
        public integer a;
        public integer b;
        public integer c;
   Public void switchoperations(integer x,integer y,string ch)
   {
       this.a=x;
       this.b=y;
       this.choice=ch;
       switch on choice{
           when 'Addition'
           {
               c=a+b;
           }
           when 'Subtraction'
           {
               c=a-b;
           }
           when 'multiplication'
           {
               c=a*b;
           }
           when 'Division'
           {
               c=a/b;
           }
           when else
           {
               System.debug('Invalid choice');
           }
       }
       display();
   }
    Public void display()
    {
        System.debug('value of a='+a);
        System.debug('Value of b='+b);
        System.debug('Value of c='+c);
        System.debug('Operation='+choice);
    }
}