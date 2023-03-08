public class ltng_contact {
   
    @AuraEnabled
public static Contact newcontact(string ln,string fn,string ph,string em,id aid)
{
    
    contact con=new contact();
    con.LastName=ln;
    con.FirstName=fn;
    con.Phone=ph;
    con.Email=em;
    con.accountid=aid;
    insert con;
    return con;
    
}


}