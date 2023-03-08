public class Day27C1 {
    Public list<Integer>l11=new list<Integer>{11,99,89,65,898,57,579};
    Public list<Integer>l22=new list<Integer>{222,343,201,33,553,720,47,81,60,45,24};
        public list<Integer>l33=new list<Integer>{3,42,20,550};
        public list<list<Integer>>nestedlist=new list<list<Integer>>();
        public list<list<Integer>>newnestedlist=new list<list<Integer>>();
    Public void nestedlist()
    {
        System.debug('Integer list l1='+l11);
        System.debug('Integer list l2='+l22);
        System.debug('Integer list l3='+l33);
        System.debug('Integer list newnested list='+nestedlist);
        nestedlist.add(l11);
        nestedlist.add(l22);
        nestedlist.add(l33);
        System.debug('Integer list nested list after adding l1,l2&l3='+nestedlist);
            for(integer i=0;i<nestedList.size();i++){
            for(integer j=0;j<nestedList[i].size();j++){
              system.debug(nestedList[i][j]); 
            }
        }
        
    }

}