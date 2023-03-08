public class Day25C3 {
    Public String S1='Welcome';
    Public String S2='Hello How are you';
    Public String S3='Welcome to Apex World';
    Public String S4;
    Public String S5;
    Public String S6='Welcome';
    
 Public Void StringMethods()
    {
        System.debug('S1='+S1);
        System.debug('S2='+S2);
        System.debug('S3='+S3);
        System.debug('S4='+S4);
        System.debug('S5='+S5);
        System.debug('S6='+S6);
        //1.Length
        System.debug('Length of S1='+S1.length());
        //2.Char At
        System.debug('Charater at Index 3 in S2='+S2.charAt(3));
        //3.Contains
        System.debug('S3 contains S1='+S3.contains(S1));
        System.debug('S3 contains S2='+S3.contains(S2));
        System.debug('S3 contains "Apex"='+S3.contains('Apex'));
        System.debug('S3 contains \'Apex\'='+S3.contains('Apex'));
        System.debug('S3 contains \'Welcome\'='+S3.contains('Welcome'));
        System.debug('S3 contains \'Welcome\'='+S3.containsIgnoreCase('welcome'));
        //4.White Spaces
        System.debug('S3 Contains White Space='+S3.containsWhitespace());
        //5.Starts With
        System.debug('S2 Starts With \'Hello\'='+S2.startsWith('Hello'));
        System.debug('S2 Starts With \'hello\'='+S2.startsWithIgnoreCase('hello'));
        //6.EndsWith
        System.debug('S2 Ends With \'you\'='+S2.endsWith('you'));
        //7.Center
        System.debug('Centered S1 Text='+S1.center(20));
        System.debug('Centered S1 Text With padded='+S1.center(20,'*'));
        //8.Compare to
        Integer result=S2.compareTo(S6);
        System.debug('S2 Compared With S6='+result);             
        //9.Equals
        System.debug('S2 Equals S1='+S2.equals(S1));
        //10.Index Of
        System.debug('Index of \'Are\'='+S3.indexOf('are'));
        //11.Is alpha
        System.debug('S2 Contains only alphabet?='+S2.isAlpha());
        //12.Is Blank
        System.debug('Is S4 Is Blank='+String.isBlank(S4));
        //13.Left
        System.debug('Left 5 Characters of S2='+S2.left(5));
        //14.LeftPad
        System.debug('LeftPad='+S2.leftPad(25,'$'));
        //15.SubString
        System.debug('SubString From Index 6 to end='+s2.substring(6));
        System.debug('SubString From 6 to 12='+S2.substring(6,12));
        //16.Remove
        System.debug('Remove\'you\'='+S2.remove('you'));
        
    }
}