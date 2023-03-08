public class Day35C3 {

    list<Candidate__c> c1=[select Name,Last_Name__c,City__c,Total_Experience__c
                          from Candidate__c
                          where City__c='Hyderabad' And Total_Experience__c>0 ];
    public void displayCandidaterecords()
    {
      for(Candidate__c c2:c1)
      {
          System.debug('Candidate Name='+c2.Name);
          System.debug('Candidate LastName='+c2.Last_Name__c);
          System.debug('Candidate City='+c2.City__c);
          System.debug('Candidate Experience='+c2.Total_Experience__c);
          System.debug('New Candidate');
      }
    }
}