trigger LeadDuplicate on Lead (before insert) {
/*for(lead l:trigger.new)
{
    list<lead> lds=[select lastname from lead 
                    where name=:l.lastname];
    if(lds.size()>0)
    {
        l.lastname.adderror('a lead with name already existing');
    }

}*/
}