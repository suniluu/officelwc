public class Day38C6 {
   
    
    @Future
    public static void addfutureAccounts(){
                for(integer i=1;i<5;i++){
            account acc=new account(name='account'+i,phone='88989',industry='education');       
            insert acc;
        for(integer j=1;j<=i;j++)
        {
            contact con=new contact(Lastname='contact'+j,phone='7874853');
            con.AccountId=acc.id;
           insert con;   
        }
          
    
    }
        
}
}