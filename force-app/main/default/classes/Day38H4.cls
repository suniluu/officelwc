public class Day38H4 {
    @Future
    public static void mergeAccounts()
    {
        account educationaccounst=[select name,industry
                                       from account  where industry='Education' and name='Adhitya'];
        account Entertainmentaccounts=[select name,industry
                                       from account  where industry='Entertainment' and name='Abhi'];
        merge educationaccounst Entertainmentaccounts;
        account educationaccounts=[select name,industry
                                       from account  where industry='Education' and name='Adhitya'];
        System.debug(educationaccounts);
    }

}