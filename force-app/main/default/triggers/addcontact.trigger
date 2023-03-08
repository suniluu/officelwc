trigger addcontact on Candidate__c (after insert) {
Candidatehandler.candidatecontact(trigger.new);
}