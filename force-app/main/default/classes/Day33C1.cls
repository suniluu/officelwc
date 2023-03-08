public class Day33C1 {
    string fldlst;
    string objName;
    list<Sobject> Sobjs1=new list<Sobject>();
    list<Sobject> sobjs2=new list<Sobject>();
   
 public void DataBaseQuery(String fldlst,string objName) 
 {
     this.fldlst=fldlst;
     this.objName=objName;
     Sobjs1=database.query('Select Name from Lead where Industry=\'Education\'');
     Sobjs2=database.query('select '+fldlst+' from '+objName);
     System.debug(Sobjs1);
     System.debug(Sobjs2);
     System.debug(Sobjs2.size());
     for(Sobject a:Sobjs2)
     {
         System.debug(a);
     }
 }

}