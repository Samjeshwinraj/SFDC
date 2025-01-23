@isTest
private class AccountControllerTest {

@isTest
    public static void testGetAccounts() {
        User usr = createTestUser();
        List<Account> accList = [select id,name from Account where name like '%test%']; 
        system.debug('accList :'+accList);
        Account account = accList[0];
        String accountName = account.Name;
        System.runAs(usr){
            List<Account> accounts = AccountController.getAccounts(accountName);
            System.assertEquals(1, accounts.size());
        }
    }
}